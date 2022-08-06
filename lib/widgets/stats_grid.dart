import 'package:flutter/material.dart';

class StatsGrid extends StatelessWidget {
  const StatsGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SizedBox(

      height:
      MediaQuery.of(context).size.height *.45,
      // MediaQuery.of(context).size.height * 0.25,
      child: Column(
        children: <Widget>[
          Flexible(
            child: Column(
              children: [
                Row(
                  children: <Widget>[
                    Center(child: _buildStat_icon(Icons.account_circle,' Total Intake', '3087400', Colors.red)),
                          _buildStat_icon(Icons.account_circle,' New Institute', '171', Colors.orange),
                    // _buildStat_icon(Icons.face_outlined,'New Institute', '171', Colors.orange),

                  ],
                ),
              ],
            ),
          ),

          Flexible(
            child: Column(
              children: [
                Row (
                  children: <Widget>[
                    _buildStat_icon(Icons.girl_rounded,'Girls', '484496', Colors.green),
                    _buildStat_icon(Icons.boy_rounded,'Boys', '1167959', Colors.lightBlue),
                    _buildStat_icon(Icons.do_not_disturb_on_total_silence,'Faculty', '558837', Colors.purple),
                  ],
                ),
              ],
            ),
          ),
          Flexible(
            child: Column(
              children: [
                Row (
                  children: <Widget>[
                    _buildStat_icon(Icons.girl_rounded,'Total Institutes ', '9650', Colors.red),
                    _buildStat_icon(Icons.boy_rounded,'Closed Institutes', '43', Colors.lightGreen),
                    // _buildStat_icon(Icons.do_not_disturb_on_total_silence,'Total', '7952', Colors.purple),
                  ],
                ),
              ],
            ),
          ),
          Flexible(
            child: Column(
              children: [
                Row(
                  children: <Widget>[
                    _buildStat_icon(Icons.do_not_disturb_on_total_silence,'Students Passed', '#', Colors.pink),
                    Center(child: _buildStat_icon(Icons.girl_rounded,'Placement', '652322', Colors.blueGrey)),

                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  }
  Expanded _buildStat_icon(IconData iconName, String title, String count, MaterialColor color) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(7.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                Icon(iconName,color: Colors.white,),
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                count,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

