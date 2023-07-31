
import 'package:flutter/material.dart';
import 'package:owner/utils/alltext/alltext.dart';
import 'package:owner/utils/colors/colors.dart';
import 'package:sizer/sizer.dart';

////<-------resend otp --------->///
Widget resendotp() {
  return Padding(
    padding: EdgeInsets.only(left: 7.h),
    child: Row(
      children: [
        SizedBox(
          child: alltext(
              txt: "Didnt you Recieve any code ?",
              col: gy,
              siz: 10.sp,
              wei: FontWeight.bold, max: 1),
        ),
        SizedBox(
          child: TextButton(
              onPressed: () {
               // resend.getResendOtp(email: Regemail.text);
              },
              child: alltext(
                  txt: "Resend Code ",
                  col: pp,
                  siz: 10.sp,
                  wei: FontWeight.bold, max: 1)),
        )
      ],
    ),
  );
}
