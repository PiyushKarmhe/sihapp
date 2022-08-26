import 'package:flutter/material.dart';
import 'package:sih/view/widgets/graphs/pie_chart_final.dart';

class PieChartView extends StatelessWidget {
  const PieChartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Stack(
        children: [
          PieChartMid(),
 
        ],
      ),
    );
  }
}
