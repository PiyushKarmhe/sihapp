import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sih/config/colors.dart';

class PrimaryButton extends StatelessWidget {
  final onTap;
  const PrimaryButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final totalWidth = MediaQuery.of(context).size.height;
    return MaterialButton(
        child: const Text(
          "Apply",
          style: TextStyle(
              color: AppColor.black, fontSize: 16, fontWeight: FontWeight.w700),
        ),
        height: 50,
        minWidth: totalWidth * 0.3,
        color: Theme.of(context).colorScheme.primary,
        shape: Theme.of(context).buttonTheme.shape,
        onPressed: onTap);
  }
}
