

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:owner/utils/alltext/alltext.dart';
import 'package:owner/utils/colors/colors.dart';
import 'package:owner/view/screens/Authentication/OTP/otp.dart';

import 'package:sizer/sizer.dart';


////<-------otp verify button---------->///
Widget verifyotp() {
  String otpsnumber =
      con1.text + con2.text + con3.text + con4.text + con5.text + con6.text;
  return SizedBox(
    height: 5.h,
    width: 70.w,
    child: ElevatedButton.icon(
      onPressed: () async {
        // print("${otpsnumber.toString()}");

        // h.getsignup(
        //     name: Regname.text.toString(),
        //     email: Regemail.text.toString(),
        //     phone: Regphone.text.toString(),
        //     password: Regpass.text.toString(),
        //     password2: Regpass.text.toString(),
        //     otp: otpsnumber);
        // s.getForget_Otp(otp: otpsnumber.toString());

        //  print("--------------------------${all.toString()}");
      },
      icon: const Icon(
        Icons.login,
        color: Colors.transparent,
      ),
      label: alltext(
          txt: "Verify", col: Colors.white, siz: 14.sp, wei: FontWeight.bold, max: 1),
      style: ElevatedButton.styleFrom(backgroundColor: pp),
    ),
  );
}
