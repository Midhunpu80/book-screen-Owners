import 'package:flutter/widgets.dart';
import 'package:owner/utils/alltext/alltext.dart';
import 'package:owner/utils/colors/colors.dart';
import 'package:sizer/sizer.dart';

Widget head() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 10.h,
      width: 100.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.h),
          color: bl,
          border: Border.all(width: 2, color: blu)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          alltext2(
            txt: "No",
            col: wh,
            siz: 10.sp,
            wei: FontWeight.bold,
            max: 1,
          ),
          alltext2(
              txt: "Screen No",
              col: wh,
              siz: 10.sp,
              wei: FontWeight.bold,
              max: 1),
          alltext2(
              txt: "Rows", col: wh, siz: 10.sp, wei: FontWeight.bold, max: 1),
          alltext2(
              txt: "col", col: wh, siz: 10.sp, wei: FontWeight.bold, max: 1),
          alltext2(
              txt: "total Seats",
              col: wh,
              siz: 10.sp,
              wei: FontWeight.bold,
              max: 1),
                alltext2(
              txt: "Action",
              col: wh,
              siz: 10.sp,
              wei: FontWeight.bold,
              max: 1),
        ],
      ),
    ),
  );
}
