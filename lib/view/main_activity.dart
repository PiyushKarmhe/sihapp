import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sih/config/colors.dart';
import 'package:sih/controller/data_controller.dart';
import 'package:sih/view/widgets/filter_container.dart';
import 'package:sih/view/widgets/primary_button.dart';
import 'package:sih/view/widgets/primary_card.dart';

RxBool showFilter = false.obs;

class MainActivity extends StatefulWidget {
  MainActivity({Key? key}) : super(key: key);
  @override
  State<MainActivity> createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  final _dataController = Get.put(DataController());
  @override
  Widget build(BuildContext context) {
    final totalHeight = MediaQuery.of(context).size.height;
    final totalWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(children: [
      Obx(
        () => (!showFilter.value)
            ? dashBoard(totalHeight, totalWidth, context)
            : filter(totalHeight, totalWidth, context),
      ),
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
                const FilterContainer(
                    child: SizedBox(
                      width: 100,
                      height: 30,
                    ),
                    color: AppColor.red),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Program",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                const FilterContainer(
                    child: SizedBox(
                      width: 100,
                      height: 30,
                    ),
                    color: AppColor.purple),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Level",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                const FilterContainer(
                    child: SizedBox(
                      width: 100,
                      height: 30,
                    ),
                    color: AppColor.green),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Institution Type",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                const FilterContainer(
                    child: SizedBox(
                      width: 100,
                      height: 30,
                    ),
                    color: AppColor.pink),
                const SizedBox(
                  height: 16,
                ),
                PrimaryButton(onTap: () {
                  setState(() {
                    showFilter.value = !showFilter.value;
                  });
                }),
                const SizedBox(
                  height: 50,
                )
              ]),
            ),
          ),
        ),
      ],
    ));
  }

  Scaffold dashBoard(
      double totalHeight, double totalWidth, BuildContext context) {
    log("Dashboard");
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.white,
        onPressed: () {
          setState(() {
            showFilter.value = !showFilter.value;
          });
        },
        child: const Icon(
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
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(children: [
                  SizedBox(
                    height: 0.05 * totalHeight,
                  ),
                  Text(
                    "Dashboard",
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  for (var each in _dataController.data) ...[
                    PrimaryCard(
                        title: each.title,
                        value: each.value,
                        icon: each.icon,
                        color: each.color)
                  ]
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
