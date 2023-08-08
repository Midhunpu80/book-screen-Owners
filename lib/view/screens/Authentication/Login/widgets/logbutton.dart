// ignore_for_file: unnecessary_string_interpolations, unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:owner/main.dart';
import 'package:owner/service/currentowner/currentownerservice.dart';
import 'package:owner/service/get-shows/getshows.dart';
import 'package:owner/service/getcurrentscreens/screen_service.dart';
import 'package:owner/view/screens/Authentication/Login/Login.dart';

import 'package:sizer/sizer.dart';

import '../../../../../utils/alltext/alltext.dart';
import '../../../../../utils/colors/colors.dart';

////<-------Login Button--------->///
Widget newlogbutton({required BuildContext context}) {
  final ownerid = Get.put(get_current_owner());

  final screendata = Get.put(get_current_screens());
  final allofshows = Get.put(getshows_service());

  return SizedBox(
    height: 7.h,
    width: 70.w,
    child: ElevatedButton.icon(
      onPressed: () async {
        if (formkey2.currentState!.validate()) {
          logdata.getowner_Login(
              email: email2.text, password: pass2.text, context: context);

          // ownerl.getrealowner();
          // // ignore: avoid_print
          // print(ownerl.reply.data.id);
          // allofshows.getshows(id: ownerl.reply.data.id.toString());
          // Get.to(() => showlist());
          // var nas = screendata.getscreens(id: ownerid.reply.data.id);
          // // ignore: avoid_print
          // print("${nas.toString()}");
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
