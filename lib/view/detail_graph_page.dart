import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sih/config/colors.dart';
import 'package:sih/controller/filter_controller.dart';
import 'package:sih/view/widgets/back_button.dart';
import 'package:sih/view/widgets/clip_container.dart';
import 'package:sih/view/widgets/graphs/line_chart.dart';

class DetailGraphPage extends StatelessWidget {
  final title;
  const DetailGraphPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _filterController = Get.put(FilterController());
    List<String> yearReceived = [
      "2021-22",
      "2020-21",
      "2019-20",
      "2018-19",
      "2017-18",
      "2016-17",
      "2015-16",
      "2014-15",
      "2013-14",
      "2012-13"
    ];

    List<double> totalInstitute = [
      152,
      354,
      165,
      235,
      468,
      777,
      123,
      256,
      325,
      111
    ];
    final totalWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Column(children: [
                const SizedBox(
                  height: 140,
                ),
                Text(
                  title,
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                    padding: EdgeInsets.all(8),
                    child: LineGraph(
                        xValue: yearReceived, yValue: totalInstitute)),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                      height: 200,
                      width: totalWidth * 0.7,
                      child: CustomRadioButton<String>(
                          buttonLables: [
                            "Year",
                            "Program",
                            "Level",
                            "Institute Type"
                          ],
                          radioButtonValue: ((p0) {
                            _filterController.detailGraphOption.value = p0;
                          }),
                          buttonValues: [
                            "Year",
                            "Program",
                            "Level",
                            "Institute Type"
                          ],
                          horizontal: true,
                          selectedColor: AppColor.white,
                          selectedBorderColor: AppColor.white,
                          unSelectedColor: AppColor.green,
                          unSelectedBorderColor: AppColor.green,
                          enableButtonWrap: false,
                          defaultSelected: "Year",
                          buttonTextStyle: const ButtonTextStyle(
                            selectedColor: AppColor.green,
                            unSelectedColor: AppColor.white,
                            textStyle: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w700),
                          ),
                          customShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          enableShape: true),
                    ),
                  ),
                )
              ]),
            ),
            const AppBackButton()
          ],
        ),
      ),
    );
  }
}
