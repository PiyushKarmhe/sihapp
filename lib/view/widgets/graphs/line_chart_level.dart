import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class LineGraph extends StatefulWidget {
  final List xValue;
  final List yValue;

  const LineGraph({Key? key, required this.xValue, required this.yValue})
      : super(key: key);

  @override
  State<LineGraph> createState() => _LineGraphState();
}

class _LineGraphState extends State<LineGraph> {
  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  void initState() {
    int divisionMade = widget.xValue.length;
    // final List finalValues = [];
    // for(int i=0;i<widget.yValue.length;i++){
    //   finalValues[i] = widget.yValue[i]/20000;
    // }
  }

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1.70,
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(18),
                ),
                color: Color(0xff232d37)),
            child: Padding(
              padding: const EdgeInsets.only(
                  right: 18.0, left: 12.0, top: 24, bottom: 12),
              child: LineChart(mainData()),
            ),
          ),
        ),
      ],
    );
  }

  Widget bottomTitleWidgets(double divisionMade, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff68737d),
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
    Widget text;
    //double purpose = divisionMade.toInt()/2;
    switch (divisionMade.toInt()) {
      case 0:
        text = const Text('All', style: style);
        break;
      case 4:
        text = const Text('UG', style: style);
        break;
      case 8:
        text = const Text('PG', style: style);
        break;
      case 12:
        text = const Text('Diploma', style: style);
        break;
      // case 8:
      //   text = const Text('2018', style: style);
      //   break;

      default:
        text = const Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 8.0,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff67727d),
      fontWeight: FontWeight.bold,
      fontSize: 15,
    );
    String text;
    switch (value.toInt()) {
      case 2:
        text = '2K';
        break;
      case 4:
        text = '4k';
        break;
      case 6:
        text = '6k';
        break;
      case 8:
        text = '8k';
        break;
      case 10:
        text = '10k';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  LineChartData mainData() {
    // List<FlSpot> spots =
    //   widget.yValue.asMap().entries.map((e) {
    //      return FlSpot(e.key.toDouble(), e.value);
    //   }).toList();

    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        horizontalInterval: 1,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
          ),
        ),
      ),
      borderData: FlBorderData(
          show: true,
          border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: 13, //get list value to divide ratio
      minY: 0,
      maxY: 10,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            // spots,
            FlSpot(0, 5.5),
            // FlSpot(1, 4),
            FlSpot(4, 8.98),
            FlSpot(8, 4.18),
            // FlSpot(5, 3.14),
            // FlSpot(6, 5.23),
            FlSpot(12, 7.1),
            // FlSpot(7, 8),
            // FlSpot(8, 7),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
      ],
    );
  }
}
