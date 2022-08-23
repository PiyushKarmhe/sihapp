import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sih/config/colors.dart';
import 'package:sih/config/text_styles.dart';
import 'package:sih/controller/data_controller.dart';
import 'package:sih/view/widgets/primary_card.dart';
import 'package:sih/widgets/data.dart';

class MainActivity extends StatefulWidget {
  const MainActivity({Key? key}) : super(key: key);

  @override
  State<MainActivity> createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  final _dataController = Get.put(DataController());
  @override
  Widget build(BuildContext context) {
    final totalHeight = MediaQuery.of(context).size.height;
    final totalWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.white,
        onPressed: () {},
        child: const Icon(
          Icons.filter_alt,
          size: 30,
          color: AppColor.darkYellow,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(children: [
              SizedBox(
                height: 0.05 * totalHeight,
              ),
              Text(
                "Dashboard",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(
                height: 60,
              ),
              for (var each in _dataController.data) ...[
                PrimaryCard(
                    title: each.title,
                    value: each.value,
                    icon: each.icon,
                    color: each.color)
              ]
            ]),
          ),
        ),
      ),
    );
  }
}
