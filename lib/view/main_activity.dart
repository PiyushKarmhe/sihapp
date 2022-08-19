import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sih/config/text_styles.dart';

class MainActivity extends StatefulWidget {
  const MainActivity({Key? key}) : super(key: key);

  @override
  State<MainActivity> createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.filter_alt),
      ),
      body: SafeArea(
        child: Column(children: [
          Text(
            "Dashboard",
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ]),
      ),
    );
  }
}
