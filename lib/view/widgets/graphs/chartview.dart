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
          //   Center(
          //   child: Container(
          //     height: constraints.maxWidth*0.43,
          //     decoration: const BoxDecoration(
          //       color: Colors.white,
          //       shape: BoxShape.circle,
          //       boxShadow: [
          //         BoxShadow(
          //           blurRadius: 1,
          //           offset: Offset(-1,-1),
          //           color: Colors.white,
          //         ),

          //       ],
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
