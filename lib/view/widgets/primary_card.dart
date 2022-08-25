import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sih/view/detail_graph_page.dart';

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
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => DetailGraphPage(
                          title: title,
                        ))));
          },
          child: Container(
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(25)),
            //   width: totalWidth * 0.85,

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
                            vertical: 10, horizontal: 10),
                        child: Icon(
                          icon,
                          size: 0,
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
            ),
          ),
        ),
        Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: 8,
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
