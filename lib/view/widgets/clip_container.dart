import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sih/config/colors.dart';

class ClipContainer extends StatelessWidget {
  final child;
  const ClipContainer({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: AppColor.yellow),
        child: child);
  }
}
