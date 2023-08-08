import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:owner/utils/alltext/alltext.dart';
import 'package:owner/utils/colors/colors.dart';
import 'package:sizer/sizer.dart';

Widget okbutton() {
  return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(backgroundColor: pp),
      onPressed: () {
        Get.back();
      },
      icon: Icon(
        Icons.verified,
        color: wh,
      ),
      label: alltext(
          txt: "OK", col: wh, siz: 12.sp, wei: FontWeight.bold, max: 1));
}
