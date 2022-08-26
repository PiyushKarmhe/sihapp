import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sih/config/colors.dart';

class NotificationTile extends StatelessWidget {
  final color;
  final text;
  const NotificationTile({Key? key, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final totalHeight = MediaQuery.of(context).size.height;
    final totalWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(08),
      margin: const EdgeInsets.all(08),
      width: totalWidth * 0.8,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(14), color: color),
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: CircleAvatar(
            child: Image.asset('assets/logo.png'),
          ),
        ),
        Expanded(
            child: Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
        ))
      ]),
    );
  }
}
