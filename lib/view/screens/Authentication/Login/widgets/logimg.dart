// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:sizer/sizer.dart';

////<-------ANimated image --------->///
Widget logimage() {
  // ignore: unused_local_variable
  var h;
  // ignore: sized_box_for_whitespace
  return Container(
    height: 38.h,
    width: 150.w,
    child: Lottie.asset("images/owner.json"),
  );
}
