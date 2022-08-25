import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilterContainer extends StatelessWidget {
  final Widget child;
  final color;
  const FilterContainer({Key? key, required this.child, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final totalWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      width: totalWidth,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25),
      ),
      child: child,
    );
  }
}
