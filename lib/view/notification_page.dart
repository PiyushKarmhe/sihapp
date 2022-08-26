import 'package:carousel_slider/carousel_slider.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sih/config/colors.dart';
import 'package:sih/view/widgets/back_button.dart';
import 'package:sih/view/widgets/notification_tile.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final totalHeight = MediaQuery.of(context).size.height;
    final totalWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: totalHeight * 0.05,
                    ),
                    Text(
                      "Notifications",
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CarouselSlider(
                        items: [
                          slider("assets/poster2_final.jpg"),
                          slider("assets/poster1.jpg"),
                          slider("assets/poster3_final.jpg"),
                          slider("assets/poster4.jpg"),
                          slider("assets/poster5.jpg"),
                        ],
                        options: CarouselOptions(
                            enableInfiniteScroll: true,
                            autoPlay: true,
                            enlargeCenterPage: true)),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Recent",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary),
                    ),
                    NotificationTile(
                      color: Theme.of(context).colorScheme.primary,
                      text:
                          "Admission is going on top Engineering Colleges, call on 1800-167-670 now to get enrolled",
                    ),
                    NotificationTile(
                      color: Theme.of(context).colorScheme.primary,
                      text:
                          "Admission is going on top Engineering Colleges, call on 1800-167-670 now to get enrolled",
                    ),
                    NotificationTile(
                      color: Theme.of(context).colorScheme.primary,
                      text:
                          "Admission is going on top Engineering Colleges, call on 1800-167-670 now to get enrolled",
                    ),
                    NotificationTile(
                      color: Theme.of(context).colorScheme.primary,
                      text:
                          "Admission is going on top Engineering Colleges, call on 1800-167-670 now to get enrolled",
                    ),
                  ],
                )),
            const AppBackButton(),
            Positioned(
                top: 30,
                right: 20,
                child: IconButton(
                  icon: const Icon(
                    Icons.star,
                    color: AppColor.yellow,
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        title: const Text(
                          "Star your Notification category",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: AppColor.black, fontSize: 20),
                        ),
                        content: Container(
                          height: 200,
                          width: totalWidth * 0.7,
                          child: CustomRadioButton<String>(
                              buttonLables: const [
                                "1st year",
                                "2nd year",
                                "3rd year",
                                "4th year"
                              ],
                              radioButtonValue: ((p0) {}),
                              buttonValues: const [
                                "1st year",
                                "2nd year",
                                "3rd year",
                                "4th year"
                              ],
                              horizontal: true,
                              selectedColor: AppColor.white,
                              selectedBorderColor: AppColor.white,
                              unSelectedColor: AppColor.green,
                              unSelectedBorderColor: AppColor.green,
                              enableButtonWrap: false,
                              defaultSelected: "1st year",
                              buttonTextStyle: const ButtonTextStyle(
                                selectedColor: AppColor.green,
                                unSelectedColor: AppColor.white,
                                textStyle: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w700),
                              ),
                              customShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              enableShape: true),
                        ),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(ctx).pop();
                            },
                            child: Center(
                              child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: AppColor.lightBlue,
                                  ),
                                  width: 120,
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                    children: [
                                      const Text(
                                        "Apply",
                                        style: TextStyle(
                                            color: AppColor.white,
                                            fontSize: 16),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }

  Container slider(ast) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14), color: AppColor.black),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Image.asset(
            ast,
            height: 200,
            fit: BoxFit.fill,
          )),
    );
  }
}
