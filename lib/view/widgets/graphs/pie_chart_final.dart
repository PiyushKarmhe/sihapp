import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
    "2022-23",
    "2021-22",
    "2020-21",
    "2019 -20",
    "2018-19",
    "2017-18",
    "2016-17",
    "2015-16",
    "2014-15",
    "2013-14",
    "2012-13"
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
      aspectRatio: 1.3,
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
                          // displayInstitute = "Institute";
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
            //shadowColor: Colors.red,
            shape: const CircleBorder(side: BorderSide.none),
            child: Container(
              //color: Colors.red,
              decoration: const BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 1,
                        offset: Offset(-1, -1),
                        color: Colors.white),
                    // BoxShadow(
                    //   spreadRadius: -2,
                    //   blurRadius: 10,
                    // )
                  ]),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
    return List.generate(11, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 20.0 : 16.0;
      final radius = 135.0;

      switch (i) {
        case 0:
          return PieChartSectionData(
              color: Colors.blue[50],
              value: 10,
              title: '40%',
              showTitle: false,
              radius: radius,
              titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ));
        case 1:
          return PieChartSectionData(
              color: Colors.blue[100],
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
              color: Colors.blue[200],
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
              color: Colors.blue[300],
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
              color: Colors.blue[400],
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
              color: Colors.blue,
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
              color: Colors.blue[600],
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
              color: Colors.blue[700],
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
              color: Colors.blue[800],
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
              color: Colors.blue[900],
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
              color: Colors.indigo[800],
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
