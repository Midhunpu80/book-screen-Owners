// ignore_for_file: non_constant_identifier_names, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:owner/main.dart';
import 'package:owner/utils/alltext/alltext.dart';
import 'package:owner/utils/colors/colors.dart';
import 'package:sizer/sizer.dart';

// ignore: use_key_in_widget_constructors
class profilescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wh.withOpacity(0.3),
      appBar: AppBar(
        toolbarHeight: 5.h,
        centerTitle: true,
        title: alltext(
            txt: "Profile", col: wh, siz: 15.sp, wei: FontWeight.bold, max: 1),
        backgroundColor: pp,
      ),
      body: SingleChildScrollView(
        child: Obx(
          () => ownerids.isLoading.value
              ? Padding(
                  padding: EdgeInsets.only(top: 25.h),
                  child: const Center(child: CircularProgressIndicator()),
                )
              : Column(
                  children: [
                    profilecard(),
                    profilecard_details(),
                  ],
                ),
        ),
      ),
    );
  }
}

Widget profilecard() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      elevation: 0,
      shadowColor: gy,
      child: Container(
        height: 25.h,
        width: 100.w,
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: yl),
          borderRadius: BorderRadius.circular(1.h),
          color: wh,
          gradient: LinearGradient(colors: [blu, bl, pp]),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 1.h,
            ),
            CircleAvatar(
              backgroundColor: re,
              radius: 8.h,
              child: Icon(
                Icons.person,
                color: wh,
                size: 10.h,
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [bl, re, yl]),
                borderRadius: BorderRadius.circular(1.h),
                color: yl,
              ),
              height: 5.h,
              width: 50.w,
              //  color: re,
              child: Center(
                  child: alltext(
                      txt: ownerids.reply.data.name.toString(),
                      col: bl,
                      siz: 13.sp,
                      wei: FontWeight.bold,
                      max: 1)),
            )
          ],
        ),
      ),
    ),
  );
}

Widget profilecard_details() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      child: Container(
        height: 57.h,
        width: 100.w,
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: yl),
          borderRadius: BorderRadius.circular(2.h),
          color: wh,
          gradient: LinearGradient(colors: [blu, or, pp]),
        ),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          //SizedBox(height: 5.h,),
          profilecard_detailed_titles(
              txt1: "Email", txt2: ownerids.reply.data.email.toString()),
          profilecard_detailed_titles(
              txt1: "Phone", txt2: ownerids.reply.data.phone.toString()),
          profilecard_detailed_titles(
              txt1: "Licence", txt2: ownerids.reply.data.licence.toString()),
          profilecard_detailed_titles(
              txt1: "Adhar Id", txt2: ownerids.reply.data.adhaar.toString()),
          profilecard_detailed_titles(
              txt1: "Location", txt2: ownerids.reply.data.location.toString()),
          profilecard_detailed_titles(
              txt1: "Wallet", txt2: ownerids.reply.data.wallet.toString()),
          profilecard_detailed_titles(
              txt1: "Images", txt2: ownerids.reply.data.wallet.toString()),
          profilecard_detailed_titles(
              txt1: "Status", txt2: ownerids.reply.data.status.toString()),
        ]),
      ),
    ),
  );
}

profilecard_detailed_titles({required var txt1, required var txt2}) {
  return Container(
    height: 6.h,
    width: 85.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(1.h),
    ),
    // ignore: prefer_const_constructors
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          alltext(txt: txt1, col: bl, siz: 10.sp, wei: FontWeight.bold, max: 1),
          alltext(txt: txt2, col: bl, siz: 10.sp, wei: FontWeight.bold, max: 1)
        ],
      ),
    ),
  );
}
