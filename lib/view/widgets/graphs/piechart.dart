import 'package:flutter/material.dart';
import 'package:sih/view/widgets/graphs/chartview.dart';

class PieChart extends StatelessWidget {
  const PieChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: SizedBox(
        height: height * 0.7,
        child: const PieChartView(),
      ),
    );
  }
}
