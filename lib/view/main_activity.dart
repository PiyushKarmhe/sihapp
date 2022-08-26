import 'dart:developer';

import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sih/config/colors.dart';
import 'package:sih/config/shared_prefrences.dart';
import 'package:sih/controller/data_controller.dart';
import 'package:sih/controller/tab_controller.dart';
import 'package:sih/view/detail_graph_page.dart';
import 'package:sih/view/widgets/filter_container.dart';
import 'package:sih/view/widgets/graphs/piechart.dart';
import 'package:sih/view/widgets/primary_button.dart';
import 'package:sih/view/widgets/primary_card.dart';

import '../controller/filter_controller.dart';

RxBool showFilter = false.obs;
RxBool showMenu = false.obs;

class MainActivity extends StatefulWidget {
  MainActivity({Key? key}) : super(key: key);
  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State with TickerProviderStateMixin {
  final _dataController = Get.put(DataController());
  final _filterController = Get.put(FilterController());
  final controller = AnalysisPageController();
  late bool en;
  @override
  void initState() {
    // TODO: implement initState
    en = UserPreferences.getEn() ?? true;
    controller.tabController = TabController(
      length: 2,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final totalHeight = MediaQuery.of(context).size.height;
    final totalWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(children: [
      Container(
        height: totalHeight,
        width: totalWidth,
        decoration: BoxDecoration(
            gradient: RadialGradient(colors: [
          AppColor.grad1,
          AppColor.grad2,
        ], radius: 2, center: Alignment.topRight)),
      ),
      Obx(
        () => (!showFilter.value)
            ? dashBoard(totalHeight, totalWidth, context)
            : filter(totalHeight, totalWidth, context),
      ),
      Positioned(
          top: 50,
          right: 10,
          child: MaterialButton(
            shape: const CircleBorder(),
            color: AppColor.yellow,
            onPressed: () {
              setState(() {
                en = !en;
                UserPreferences.setEn(en);
              });
            },
            child: Text((en) ? "Aa" : "अ"),
          ))
    ]));
  }

  Widget filter(totalHeight, totalWidth, context) {
    log("Filter");
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          top: -totalHeight * 0.1,
          left: -totalWidth * 0.42,
          child: SvgPicture.asset(
            "assets/components/Frame.svg",
            height: totalHeight * 0.3,
            color: Theme.of(context).secondaryHeaderColor.withOpacity(0.8),
          ),
        ),
        SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(children: [
                SizedBox(
                  width: totalWidth,
                  height: totalHeight * 0.1,
                ),
                Text(
                  "Apply Filters",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                SizedBox(
                  height: totalHeight * 0.05,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Year",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                FilterContainer(
                  color: AppColor.red,
                  labelList: _filterController.yearList,
                  selected: _filterController.selectedYears,
                  horizontal: false,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Program",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                FilterContainer(
                  color: AppColor.purple,
                  labelList: _filterController.programList,
                  selected: _filterController.selectedProgram,
                  horizontal: true,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Level",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                FilterContainer(
                  color: AppColor.green,
                  labelList: _filterController.levelList,
                  selected: _filterController.selectedLevel,
                  horizontal: false,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Institution Type",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                FilterContainer(
                  color: AppColor.pink,
                  labelList: _filterController.instTypeList,
                  selected: _filterController.selectedInstType,
                  horizontal: true,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "State",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                FilterContainer(
                  color: AppColor.green,
                  labelList: _filterController.stateList,
                  selected: _filterController.selectedState,
                  horizontal: true,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Minority",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                FilterContainer(
                  color: AppColor.yellow,
                  labelList: _filterController.minorityList,
                  selected: _filterController.selectedMin,
                  horizontal: true,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Women",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                FilterContainer(
                  color: AppColor.red,
                  labelList: _filterController.womenList,
                  selected: _filterController.selectedWomen,
                  horizontal: true,
                ),
                const SizedBox(
                  height: 150,
                ),
              ]),
            ),
          ),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                  vertical: 20, horizontal: totalWidth * 0.2),
              color:
                  Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
              width: totalWidth,
              child: PrimaryButton(onTap: () {
                setState(() {
                  print("Selected Institute types" +
                      _filterController.selectedInstType.toString());
                  print("Selected Program" +
                      _filterController.selectedProgram.toString());
                  showFilter.value = !showFilter.value;
                });
              }),
            )),
      ],
    ));
  }

  Widget dashBoard(
      double totalHeight, double totalWidth, BuildContext context) {
    log("Dashboard");
    return Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          isExtended: true,
          backgroundColor: AppColor.white,
          onPressed: () {
            setState(() {
              showFilter.value = !showFilter.value;
            });
          },
          label: const Text("Filter"),
          icon: const Icon(
            Icons.filter_alt,
            size: 30,
            color: AppColor.darkYellow,
          ),
        ),
        body: Stack(
          children: [
            Positioned(
              top: -totalHeight * 0.1,
              left: -totalWidth * 0.42,
              child: SvgPicture.asset(
                "assets/components/Frame.svg",
                height: totalHeight * 0.3,
                color: Theme.of(context).secondaryHeaderColor.withOpacity(0.8),
              ),
            ),
            CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 180.0,
                  floating: false,
                  pinned: false,
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text(
                      'Dashboard',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    centerTitle: true,
                    background: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 120,
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Theme.of(context)
                                .colorScheme
                                .secondaryContainer,
                            boxShadow: [
                              BoxShadow(
                                color:
                                    const Color(0xFF000000).withOpacity(0.25),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColor.white,
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color(0xFF000000).withOpacity(0.25),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Image.asset(
                              "assets/logo.png",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    final _megaList = _filterController.selectedYears +
                        _filterController.selectedProgram +
                        _filterController.selectedLevel +
                        _filterController.selectedInstType;
                    return Center(
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(children: [
                          if (_megaList.isNotEmpty) ...[
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 32, vertical: 16),
                              child: SingleChildScrollView(
                                physics: const BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    for (var every in _megaList) ...[
                                      Container(
                                        margin: const EdgeInsets.all(8),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 6),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            color: AppColor.yellow),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              every,
                                              style: const TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  if (_filterController
                                                      .selectedYears
                                                      .contains(every)) {
                                                    _filterController
                                                        .selectedYears
                                                        .remove(every);
                                                  }
                                                  if (_filterController
                                                      .selectedProgram
                                                      .contains(every)) {
                                                    _filterController
                                                        .selectedProgram
                                                        .remove(every);
                                                  }
                                                  if (_filterController
                                                      .selectedLevel
                                                      .contains(every)) {
                                                    _filterController
                                                        .selectedLevel
                                                        .remove(every);
                                                  }
                                                  if (_filterController
                                                      .selectedInstType
                                                      .contains(every)) {
                                                    _filterController
                                                        .selectedInstType
                                                        .remove(every);
                                                  }
                                                });
                                              },
                                              child: const Icon(
                                                Icons.close,
                                                color: AppColor.black,
                                                size: 20,
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ]
                                  ],
                                ),
                              ),
                            )
                          ],
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: DefaultTabController(
                              length: 2,
                              child: Column(
                                children: [
                                  TabBar(
                                    labelColor:
                                        Theme.of(context).colorScheme.onPrimary,
                                    controller: controller.tabController,
                                    isScrollable: true,
                                    physics: const BouncingScrollPhysics(),
                                    labelStyle: Theme.of(context)
                                        .textTheme
                                        .displayLarge,
                                    indicator: UnderlineTabIndicator(
                                      insets: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                      ),
                                    ),
                                    tabs: controller.tabs
                                        .map((e) => Tab(
                                              text: e,
                                            ))
                                        .toList(),
                                  ),
                                  SizedBox(
                                      height: totalHeight,
                                      width: totalWidth,
                                      child: TabBarView(
                                          controller: controller.tabController,
                                          physics:
                                              const BouncingScrollPhysics(),
                                          children: <Widget>[
                                            GridView.count(
                                              physics:
                                                  const BouncingScrollPhysics(),
                                              crossAxisCount: 2,
                                              mainAxisSpacing: 14,
                                              crossAxisSpacing: 14,
                                              childAspectRatio: 1.4,
                                              shrinkWrap: false,
                                              children: [
                                                for (var each in _dataController
                                                    .data) ...[
                                                  InkWell(
                                                    onTap: () {
                                                      log("Tapped Card");
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  ((context) =>
                                                                      DetailGraphPage(
                                                                        title: (en)
                                                                            ? each.enTitle
                                                                            : each.hnTitle,
                                                                      ))));
                                                    },
                                                    child: PrimaryCard(
                                                        title: (en)
                                                            ? each.enTitle
                                                            : each.hnTitle,
                                                        value: each.value,
                                                        icon: each.icon,
                                                        color: each.color),
                                                  )
                                                ],
                                              ],
                                            ),
                                            const PieChart()
                                          ]))

                                  // Center(child: Text("hesllo"))
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: totalHeight * 0.2,
                          )
                        ]),
                      ),
                    );
                  }, childCount: 1),
                ),
              ],
            ),
          ],
        ));
  }
}
