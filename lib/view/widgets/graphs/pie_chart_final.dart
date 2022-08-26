import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sih/config/colors.dart';

class PieChartMid extends StatefulWidget {
  const PieChartMid({Key? key}) : super(key: key);

  @override
  State<PieChartMid> createState() => _PieChartMidState();
}

class _PieChartMidState extends State<PieChartMid> {
  int touchedIndex = -1;
  String year = "Click to";
  String valueInstitute = "View";
  Color textColor = Colors.black;

  List<String> yearReceived = [
    "2019-20",
    "2018-19",
    "2017-18",
    "2016-17",
    "2015-16",
    "2014-15",
    "2013-14",
    "2012-13",
    "2022-23",
    "2021-22",
    "2020-21",
    
  ];

  List<String> numInstitute = [
    "1212",
    "24234",
    "2124",
    "9119",
    "112",
    "123445",
    "999",
    "1421",
    "1151",
    "13333",
    "931"
  ];

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.1,
      child: Stack(children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
            child: Card(
              elevation: 0,
              color: Colors.transparent,
              child: AspectRatio(
                aspectRatio: 1,
                child: PieChart(
                  PieChartData(
                      pieTouchData: PieTouchData(touchCallback:
                          (FlTouchEvent event, pieTouchResponse) {
                        setState(() {
                          if (!event.isInterestedForInteractions ||
                              pieTouchResponse == null ||
                              pieTouchResponse.touchedSection == null) {
                            touchedIndex = -1;
                            return;
                          }
                          touchedIndex = pieTouchResponse
                              .touchedSection!.touchedSectionIndex;
                          year = yearReceived[touchedIndex];
                          valueInstitute = numInstitute[touchedIndex];
                        });
                      }),
                      borderData: FlBorderData(
                        show: false,
                      ),
                      sectionsSpace: 0,
                      centerSpaceRadius: 0,
                      sections: showingSections()),
                ),
              ),
            ),
          ),
        ),
        Padding(
          //for elevated circle
          padding: const EdgeInsets.fromLTRB(82, 80, 80, 80),
          child: Material(
            elevation: 130,
            shadowColor: Colors.transparent,
            shape: const CircleBorder(side: BorderSide.none),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(-1, -1),
                        color: Colors.white),
                  ]),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text("Institute",
              style: TextStyle(
                color: textColor,
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),)
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                year,
                style: TextStyle(
                    color: textColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                valueInstitute,
                style: TextStyle(
                    color: textColor,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        )
      ]),
    );
  }

  List<PieChartSectionData> showingSections() {
    final width = MediaQuery.of(context).size.width;
    return List.generate(11, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 20.0 : 16.0;
      final radius = isTouched? width*0.42 : width*0.38;

      switch (i) {
        case 0:
          return PieChartSectionData(
              color: AppColor.pink,
              value: 10,
              title: '40%',
              showTitle: true,
              titlePositionPercentageOffset: 20,
              radius: radius,
              titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ));
        case 1:
          return PieChartSectionData(
              color: AppColor.yellow,
              value: 10,
              title: '30%',
              showTitle: false,
              radius: radius,
              titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ));
        case 2:
          return PieChartSectionData(
              color: AppColor.red,
              value: 10,
              title: '16%',
              showTitle: false,
              radius: radius,
              titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ));
        case 3:
          return PieChartSectionData(
              color: AppColor.pink,
              value: 10,
              title: '15%',
              showTitle: false,
              radius: radius,
              titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ));
        case 4:
          return PieChartSectionData(
              color: AppColor.purple,
              value: 10,
              title: '15%',
              showTitle: false,
              radius: radius,
              titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ));
        case 5:
          return PieChartSectionData(
              color: AppColor.green,
              value: 10,
              title: '15%',
              showTitle: false,
              radius: radius,
              titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ));
        case 6:
          return PieChartSectionData(
              color: AppColor.yellow,
              value: 10,
              title: '15%',
              showTitle: false,
              radius: radius,
              titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ));
        case 7:
          return PieChartSectionData(
              color: AppColor.red,
              value: 10,
              title: '15%',
              showTitle: false,
              radius: radius,
              titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ));
        case 8:
          return PieChartSectionData(
              color: AppColor.pink,
              value: 10,
              title: '15%',
              showTitle: false,
              radius: radius,
              titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ));
        case 9:
          return PieChartSectionData(
              color: AppColor.purple,
              value: 10,
              title: '15%',
              showTitle: false,
              radius: radius,
              titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ));
        case 10:
          return PieChartSectionData(
              color: AppColor.green,
              value: 10,
              title: '15%',
              showTitle: false,
              radius: radius,
              titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ));

        default:
          throw 'Oh no';
      }
    });
  }
}
