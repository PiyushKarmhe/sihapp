import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sih/config/colors.dart';
import 'package:sih/controller/filter_controller.dart';
import 'package:sih/view/main_activity.dart';
import 'package:sih/view/widgets/back_button.dart';
import 'package:sih/view/widgets/filter_container.dart';
import 'package:sih/view/widgets/primary_button.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  final _filterController = Get.put(FilterController());
  @override
  Widget build(BuildContext context) {
    final totalHeight = MediaQuery.of(context).size.height;
    final totalWidth = MediaQuery.of(context).size.width;
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
        SafeArea(
          child: Stack(children: [
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                      vertical: 20, horizontal: totalWidth * 0.2),
                  color: Theme.of(context)
                      .colorScheme
                      .onBackground
                      .withOpacity(0.5),
                  width: totalWidth,
                  child: PrimaryButton(onTap: () {
                    setState(() {
                      print("Selected Institute types" +
                          _filterController.selectedInstType.toString());
                      print("Selected Program" +
                          _filterController.selectedProgram.toString());
                    });
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => MainActivity())));
                  }),
                )),
            const AppBackButton()
          ]),
        ),
      ],
    ));
  }
}
