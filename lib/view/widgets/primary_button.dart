import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PrimaryButton extends StatelessWidget {
  final onTap;
  const PrimaryButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        child: Text(
          "Apply",
          style: Theme.of(context).textTheme.button,
        ),
        minWidth: 200,
        color: Theme.of(context).colorScheme.primary,
        shape: Theme.of(context).buttonTheme.shape,
        onPressed: onTap);
  }
}
