// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:sih/widgets/home_screen.dart';
import 'package:sih/widgets/palette.dart';
import 'package:sih/widgets/pie_chart.dart';
import 'package:sih/widgets/stats_grid.dart';
import 'package:toggle_switch/toggle_switch.dart';

class CustomSliverAppBar extends StatefulWidget {
  const CustomSliverAppBar({Key? key}) : super(key: key);

  @override
  State<CustomSliverAppBar> createState() => _CustomSliverAppBarState();
}

class _CustomSliverAppBarState extends State<CustomSliverAppBar> {

  String imageURL = "https://upload.wikimedia.org/wikipedia/en/e/eb/All_India_Council_for_Technical_Education_logo.png";

  @override
  Widget build(BuildContext context) {
    List<List<Color>> getColors = [ [Colors.yellow,Colors.orange],[Colors.black45, Colors.black26]];
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: NetworkImage(imageURL),
              height: 45,
            ),
            SizedBox(width: screenWidth/8),
            const Text(
              "AICTE DASHBOARD"
            ),
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 9),
            child: ToggleSwitch(
              totalSwitches: 2,
              minHeight: 4,
              minWidth: 30,
              initialLabelIndex: 0,
              cornerRadius: 20.0,
              activeFgColor: Colors.white,
              inactiveBgColor: Colors.grey,
              inactiveFgColor: Colors.white,
              icons: const [
                Icons.wb_sunny_outlined,
                Icons.nightlight_round,
              ],
              iconSize: 20,
              animate: true,
              activeBgColors: getColors,
              curve: Curves.bounceInOut,
              onToggle: (index){
                print ('switched to: $index');
              },
            ),
          ),
          // Switch(
          //   value: isSwitched,
          //   onChanged: (value){
          //     setState(() {
          //       isSwitched=value;
          //       print(isSwitched);
          //     });
          //   },
          //   activeColor: Colors.green,
          //   activeTrackColor: Colors.lightGreenAccent,
          // ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 45,
              width: screenWidth,
              decoration: const BoxDecoration(
                color: Palette.primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100)
                ),
              ),
              child: const Text(
                "Statics",
                textAlign: TextAlign.center,
                textScaleFactor: 1.6,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
            const SizedBox(height: 12),
            const HomeScreen(),
            const SizedBox(height: 10),
            // ElevatedButton(
            //     onPressed: () {},
            //     child: const Center(
            //       child: Text("Submit"),
            //     )
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MaterialButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  height: 43,
                  minWidth: 100,
                  onPressed: () {},
                  child: const Text("Submit",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  //shape: const CircleBorder(side: BorderSide()),
                ),
                MaterialButton(onPressed: (){},
                  color: Colors.red.shade400,
                  textColor: Colors.white,
                  height: 43,
                  minWidth: 100,
                  child: const Text("Reset",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                  ),
                )
              ],
            ),
            SizedBox(height:11,
            child: Container(/*color: Colors.greenAccent*/)
            ),
            const SizedBox(height: 11),
            const StatsGrid(),
            SizedBox(height: 30,
              child: Container(/*color: Colors.greenAccent,*/),),
            const PieChartMaker(),
            SizedBox(height: 30,
            child: Container(color: Colors.white,),),
            Image.asset("assets/graph.png"),
          ],
        ),
      ),
    );
  }
}
