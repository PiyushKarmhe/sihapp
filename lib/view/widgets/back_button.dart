import 'dart:ui';

import 'package:flutter/material.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final totalHeight = MediaQuery.of(context).size.height;
    final totalWidth = MediaQuery.of(context).size.width;
    return Positioned(
      top: totalWidth * 0.05,
      left: totalWidth * 0.05,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
              child: SizedBox(
                height: totalHeight * 0.05,
                width: totalHeight * 0.05,
              ),
            ),
          ),
          Container(
              height: totalHeight * 0.05,
              width: totalHeight * 0.05,
              padding: EdgeInsets.only(left: totalHeight * 0.0055),
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(14),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: totalHeight * 0.02,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ))
        ],
      ),
    );
  }
}
