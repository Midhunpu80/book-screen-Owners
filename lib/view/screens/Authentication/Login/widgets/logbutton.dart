// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:owner/service/currentowner/currentownerservice.dart';
import 'package:owner/service/getcurrentscreens/screen_service.dart';
import 'package:owner/view/screens/Authentication/Login/Login.dart';
import 'package:owner/view/screens/screenManagement/screenmanagement.dart';

import 'package:sizer/sizer.dart';

import '../../../../../utils/alltext/alltext.dart';
import '../../../../../utils/colors/colors.dart';

////<-------Login Button--------->///
Widget newlogbutton() {
  final ownerid = Get.put(get_current_owner());
  final screendata = Get.put(get_current_screens());
  // ignore: unused_local_variable

  return SizedBox(
    height: 7.h,
    width: 70.w,
    child: ElevatedButton.icon(
      onPressed: () async {
        Get.to(() => screenMangement());
        var nas = screendata.getscreens(id: ownerid.reply.data.id);
        // ignore: avoid_print
        print("${nas.toString()}");

        if (formkey2.currentState!.validate()) {
        } else {
          // ignore: avoid_print
          print("data");
        }
      },
      icon: const Icon(
        Icons.login,
        color: Colors.transparent,
      ),
      label: alltext(
          txt: "Login", col: wh, siz: 14.sp, wei: FontWeight.bold, max: 1),
      style: ElevatedButton.styleFrom(backgroundColor: blu),
    ),
  );
}
