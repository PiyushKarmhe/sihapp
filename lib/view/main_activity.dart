import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sih/config/colors.dart';
import 'package:sih/config/text_styles.dart';
import 'package:sih/view/widgets/primary_card.dart';

class MainActivity extends StatefulWidget {
  const MainActivity({Key? key}) : super(key: key);

  @override
  State<MainActivity> createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  @override
  Widget build(BuildContext context) {
    final totalHeight = MediaQuery.of(context).size.height;
    final totalWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.filter_alt),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: 0.05 * totalHeight,
              ),
              Text(
                "Dashboard",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              SizedBox(
                height: 60,
              ),
              const PrimaryCard(
                  title: "Total Institutions",
                  value: "120000",
                  icon: Icons.apartment_outlined,
                  color: AppColor.red),
              const PrimaryCard(
                  title: "Total Institutions",
                  value: "120000",
                  icon: Icons.apartment_outlined,
                  color: AppColor.pink),
              const PrimaryCard(
                  title: "Total Institutions",
                  value: "120000",
                  icon: Icons.apartment_outlined,
                  color: AppColor.yellow),
            ]),
          ),
        ),
      ),
    );
  }
}
