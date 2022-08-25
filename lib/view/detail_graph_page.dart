import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailGraphPage extends StatelessWidget {
  final title;
  const DetailGraphPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Text(
          title,
          style: Theme.of(context).textTheme.displayLarge,
        )
      ]),
    );
  }
}
