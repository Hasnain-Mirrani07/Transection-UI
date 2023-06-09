
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../custome_widged/custom_button.dart';
import '../utils/assets.dart';
import '../utils/colors.dart';
import '../utils/strings.dart';
import 'home_screen.dart';

class ThankYouScreen extends StatelessWidget {
  const ThankYouScreen({super.key});

  get editingController => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.5, vertical: 23.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Listener(
                  behavior: HitTestBehavior.translucent,
                  onPointerDown: (event) => Get.to(() => const HomeScreen()),
                  child: Image.asset(
                    crossIcon,
                    width: 16.w,
                    height: 16.h,
                  ),
                ),
                SizedBox(
                  height: 55.h,
                ),
                const Center(
                  child: Text(
                    thankyouString,
                    style: TextStyle(
                        fontSize: 23,
                        fontFamily: "poppins",
                        fontWeight: FontWeight.w600,
                        color: blackTheme),
                  ),
                ),
                SizedBox(
                  height: 11.h,
                ),
                Center(
                  child: Text(
                    confirmString,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: "poppins",
                      fontWeight: FontWeight.w400,
                      color: greylight,
                    ),
                  ),
                ),
                SizedBox(
                  height: 42.h,
                ),
                Image.asset(
                  thankyouImg,
                  width: 364.w,
                  height: 319.h,
                ),
                const SizedBox(
                  height: 6,
                ),
                Center(
                  child: Text(
                    setBackString,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: "poppins",
                      fontWeight: FontWeight.w400,
                      color: blackTheme,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                Center(
                  child: SizedBox(
                    height: 51.h,
                    width: 150.w,
                    child: Center(
                      child: Text(
                        callUsString,
                        maxLines: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 11.sp,
                          fontFamily: "poppins",
                          fontWeight: FontWeight.w400,
                          color: black6Color.withOpacity(.44),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 44.h,
                ),
                Center(
                  child: BlueBtn(
                    title: "Go Home",
                    onPressed: () {
                      Get.to(const HomeScreen());
                    },
                  ),
                ),
                SizedBox(
                  height: 26.36.h,
                ),
                Center(
                  child: Container(
                      height: 5.h,
                      width: 134.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          color: blac)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
