import 'package:flutter/material.dart';
import 'package:owner/utils/alltext/alltext.dart';
import 'package:owner/utils/colors/colors.dart';
import 'package:sizer/sizer.dart';

// List datas = [
//   month.reply.data[4].toString(),
//   sail.reply?.data.userCount.toString(),
//   sail.reply?.data.ownerCount.toString(),
//   sail.reply?.data.movieCount.toString(),
//   sail.reply?.data.activeCount.toString(),
//   sail.reply?.data.expiredCount.toString()
// ];

Widget revenusatus() {
  return SliverGrid.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 1.2),
    itemBuilder: (context, index) {
      return Card(
        child: Container(
          margin: const EdgeInsets.all(7),
          height: 2.h,
          width: 10.w,
          decoration: BoxDecoration(
            color: gr.withOpacity(0.3),
            borderRadius: BorderRadius.circular(1.h),
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  Row(
                    children: [dahboradicons(index), dashtextdata(index)],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: dashvalue(values: "1222"),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    },
    itemCount: 5,
  );
}

Widget dahboradicons(var index) {
  List<IconData> ico = [
    Icons.dashboard,
    Icons.movie,
    Icons.person,
    Icons.theaters,
    Icons.verified,
    Icons.shopping_cart,
    Icons.report
  ];

  return Padding(
    padding: EdgeInsets.only(left: 2.h, top: 1.h),
    child: Container(
      height: 7.h,
      width: 15.w,
      decoration:
          BoxDecoration(color: yl, borderRadius: BorderRadius.circular(1.h)),
      child: Icon(
        ico[index],
        size: 3.h,
      ),
    ),
  );
}

Widget dashtextdata(var index) {
  List<String> datas = [
    "total\n Revenue ",
    "total user",
    "total\n theater",
    "running \nmovies",
    "Active \nbooking",
    "Expired\n Booking",
  ];

  return Padding(
    padding: EdgeInsets.only(left: 3.w),
    child: SizedBox(
      height: 6.h,
      width: 20.w,
      child: alltext(
          txt: datas[index], col: bl, siz: 11.sp, wei: FontWeight.bold, max: 2),
    ),
  );
}

Widget dashvalue({required var values}) {
  return Padding(
    padding: EdgeInsets.only(left: 3.w),
    child: SizedBox(
      height: 6.h,
      width: 20.w,
      child: alltext(
          txt: values, col: bl, siz: 12.sp, wei: FontWeight.bold, max: 2),
    ),
  );
}
