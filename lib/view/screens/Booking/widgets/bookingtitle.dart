import 'package:flutter/material.dart';
import 'package:owner/utils/alltext/alltext.dart';
import 'package:owner/utils/colors/colors.dart';

import 'package:sizer/sizer.dart';

Widget bookingtitles() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      child: Container(
        height: 10.h,
        width: 100.w,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(1.h), color: pp),
        // ignore: prefer_const_constructors
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // ignore:
          // prefer_const_literals_to_create_immutables
          children: [
            bookingtetx(txt: "No"),
            bookingtetx(txt: "user Name"),
            bookingtetx(txt: "Movie Name"),
            bookingtetx(txt: "status"),
            bookingtetx(txt: "Details"),
          ],
        ),
      ),
    ),
  );
}

Widget bookingtetx({required var txt}) {
  return alltext(txt: txt, col: wh, siz: 10.sp, wei: FontWeight.bold, max: 1);
}
