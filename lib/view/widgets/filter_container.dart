import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sih/config/colors.dart';

class FilterContainer extends StatelessWidget {
  final selected;
  final color;
  final labelList;
  final horizontal;
  const FilterContainer(
      {Key? key,
      required this.color,
      required this.selected,
      required this.labelList,
      required this.horizontal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final totalWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      width: totalWidth,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25),
      ),
      child: CustomCheckBoxGroup<String>(
        buttonLables: labelList,
        horizontal: horizontal,
        buttonValuesList: labelList,
        selectedColor: AppColor.white,
        selectedBorderColor: AppColor.white,
        unSelectedColor: color,
        unSelectedBorderColor: AppColor.white,
        enableButtonWrap: false,
        buttonTextStyle: ButtonTextStyle(
          selectedColor: color,
          unSelectedColor: AppColor.white,
          textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
        ),
        customShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
          side: const BorderSide(width: 2, color: AppColor.white),
        ),
        enableShape: true,
        checkBoxButtonValues: (List<dynamic> value) {
          selected.value = value;
          print(selected.value);
        },
      ),
    );
  }
}
