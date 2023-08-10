//
import 'package:flutter/material.dart';
import 'package:owner/main.dart';
import 'package:owner/utils/alltext/alltext.dart';
import 'package:owner/utils/colors/colors.dart';
import 'package:owner/view/screens/Home/widgets/piechart.dart';
import 'package:sizer/sizer.dart';

//final month = Get.put(month_service());
// var dat = month.reply.data;
// var jat = dat.reduce((value, element) => value + element);

Widget sailstime() {
  return SliverAppBar(
    leading: const Icon(
      Icons.abc,
      color: Colors.transparent,
    ),
    backgroundColor: wh,
    toolbarHeight: 60.h,
    flexibleSpace: Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      dailysail(re, "Daily sail", "56445"),
                      dailysail(blu, "Monthly saiL",
                          monthsail.reply.data.userCount[6].toString()),
                      dailysail(gr, 'Yearly saiL',
                          monthsail.reply.data.years.toString()),
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 3.h,
                          child: alltext(
                              txt: "Latest Booking Status",
                              col: bl,
                              siz: 13.sp,
                              wei: FontWeight.bold,
                              max: 1),
                        ),
                      )),
                  SizedBox(
                    height: 2.h,
                  ),
                  piecha(),
                ],
              ),
      
    ),
  );
}

Widget dailysail(Color col, String name, String txt) {
  return Expanded(
      child: Container(
    height: 7.h,
    width: 31.w,
    margin: const EdgeInsets.all(4),
    decoration: BoxDecoration(
        border: Border.all(width: 0, color: bl),
        color: col,
        borderRadius: BorderRadius.circular(1.h)),
    child: Column(
      children: [
        SizedBox(
          height: 1.h,
        ),
        alltext(txt: name, col: bl, siz: 10.sp, wei: FontWeight.w500, max: 2),
        alltext(txt: txt, col: wh, siz: 10.sp, wei: FontWeight.bold, max: 2)
      ],
    ),
  ));
}
