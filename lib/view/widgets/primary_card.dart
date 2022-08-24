import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sih/config/colors.dart';

class PrimaryCard extends StatelessWidget {
  final title;
  final value;
  final icon;
  final color;
  const PrimaryCard(
      {Key? key,
      required this.title,
      required this.icon,
      required this.color,
      this.value = "#"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final totalHeight = MediaQuery.of(context).size.height;
    final totalWidth = MediaQuery.of(context).size.width;
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(25)),
          width: totalWidth * 0.85,
          height: 150,
          child: Align(
            alignment: Alignment.topLeft,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Stack(
                children: [
                  SvgPicture.asset(
                    "assets/components/Intersect.svg",
                    height: 100,
                    color: color,
                    colorBlendMode: BlendMode.dstATop,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 25),
                      child: Icon(
                        icon,
                        size: 40,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
          ),
        ),
        Column(children: [
          const SizedBox(
            height: 60,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            value,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ]),
      ],
    );
  }
}
