import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sih/config/colors.dart';
import 'package:sih/config/shared_prefrences.dart';

class FilterContainer extends StatelessWidget {
  final enselected;
  final hnselected;
  final color;
  final enlabelList;
  final hnlabelList;
  final horizontal;
  const FilterContainer(
      {Key? key,
      required this.color,
      required this.enselected,
      required this.hnselected,
      required this.enlabelList,
      required this.hnlabelList,
      required this.horizontal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var en = UserPreferences.getEn();
    if (en == null) {
      en = true;
    }
    final totalWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      width: totalWidth,
      constraints: const BoxConstraints(maxHeight: 280),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25),
      ),
      child: CustomCheckBoxGroup<String>(
        buttonLables: (en) ? enlabelList : hnlabelList,
        horizontal: horizontal,
        buttonValuesList: (en) ? enlabelList : hnlabelList,
        selectedColor: AppColor.white,
        selectedBorderColor: AppColor.white,
        unSelectedColor: color,
        unSelectedBorderColor: AppColor.white,
        enableButtonWrap: false,
        defaultSelected: ["All", "2022-23", "N", "सब"],
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
          enselected.value = value;
          print(enselected.value);
        },
      ),
    );
  }
}
