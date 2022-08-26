import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sih/config/colors.dart';
import 'package:sih/view/widgets/clip_container.dart';
import 'package:sih/view/widgets/graphs/line_chart.dart';

class DetailGraphPage extends StatelessWidget {
  final title;
  const DetailGraphPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        child: Center(
          child: Column(children: [
            const SizedBox(
              height: 60,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            LineGraph(xValue: yearReceived, yValue: totalInstitute),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(children: const [
                ClipContainer(
                  child: Text(
                    "Year",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                ),
                ClipContainer(
                  child: Text(
                    "Program",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                ),
                ClipContainer(
                  child: Text(
                    "Level",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                ),
                ClipContainer(
                  child: Text(
                    "Institute Type",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                )
              ]),
            )
          ]),
        ),
      ),
    );
  }
}
