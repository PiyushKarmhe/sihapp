import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartMaker extends StatefulWidget {
  const PieChartMaker({Key? key}) : super(key: key);

  @override
  State<PieChartMaker> createState() => _PieChartMakerState();
}

class _PieChartMakerState extends State<PieChartMaker> {
  String displayInstitute ="Institute";
  String year="Click to";
  String valueInstitute = "View";
  int touchedIndex= -1;
  Color textColor = Colors.red; //textColor for data display

  List<String> yearReceived = [
    "2021-22","2020-21","2019 -20","2018-19","2017-18","2016-17","2015-16","2014-15","2013-14","2012-13"
  ];

  List<String> numInstitute =[
    "24234","2124","9119","112","123445","999","1421","1151","13333","931"
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 600,
      child: Stack(
        children: [
          Material(
            elevation: 200,
            child: Container(
              decoration:  const BoxDecoration(
              shape: BoxShape.circle,
                //color: Colors.green,
              ),
              child: PieChart(
                PieChartData(
                    pieTouchData: PieTouchData(touchCallback: (FlTouchEvent event, pieTouchResponse){
                      setState(() {
                        if(!event.isInterestedForInteractions ||
                            pieTouchResponse == null ||
                            pieTouchResponse.touchedSection == null){
                          touchedIndex = -1;
                          return;
                        }
                        touchedIndex = pieTouchResponse.touchedSection!.touchedSectionIndex;
                        year = yearReceived[touchedIndex];
                        displayInstitute = "Institute";
                        valueInstitute = numInstitute[touchedIndex];

                      });
                    }),
                  borderData: FlBorderData(show: false,),
                    sectionsSpace: 0,
                    centerSpaceRadius: 90,
                  sections: showingSections()
                ),
              ),
            ),
          ),
          Padding( //for elevated circle
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
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  <Widget>[
              Center(
                  child: Text(
                      displayInstitute,
                    style: TextStyle(color: textColor,fontSize: 30,fontWeight: FontWeight.bold),
                  )
              ),
              const SizedBox(height: 10,),
              Center(
                child: Text(
                  year,
                  style: TextStyle(color: textColor,fontSize: 25,fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10,),
              Center(
                child: Text(
                  valueInstitute,
                  style: TextStyle(color: textColor,fontSize: 26,fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {

    return List.generate(10, (i) {
      //final showYear = yearReceived[i];  //for displaying title on pie chart surface
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 95.0 : 80.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Colors.blue.shade900,
            //value: 40,
            showTitle: false,
            //title: showYear,
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: Colors.blue.shade800,
            //value: 30,
            //title: showYear,
            showTitle: false,
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 2:
          return PieChartSectionData(
            color: Colors.blue.shade700,
            //value: 15,
            //title: showYear,
            showTitle: false,
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 3:
          return PieChartSectionData(
            color: Colors.blue.shade700,
            //value: 15,
            //title: showYear,
            showTitle: false,
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 4:
          return PieChartSectionData(
            color: Colors.blue.shade600,
            //value: 15,
            //title: showYear,
            showTitle: false,
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 5:
          return PieChartSectionData(
            color: Colors.blue,
            //value: 15,
            //title: showYear,
            showTitle: false,
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 6:
          return PieChartSectionData(
            color: Colors.blue.shade400,
            //value: 15,
            //title: showYear,
            showTitle: false,
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 7:
          return PieChartSectionData(
            color: Colors.blue.shade300,
            //value: 15,
            //title: showYear,
            showTitle: false,
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 8:
          return PieChartSectionData(
            color: Colors.blue.shade200,
            //value: 15,
            //title: showYear,
            showTitle: false,
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 9:
          return PieChartSectionData(
            color: Colors.blue.shade100,
            //value: 15,
            //title: showYear,
            showTitle: false,
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        default:
          throw Error();
      }
    });
  }
}



