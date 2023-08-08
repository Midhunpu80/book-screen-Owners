// ignore_for_file: prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:owner/main.dart';
import 'package:owner/utils/alltext/alltext.dart';
import 'package:owner/utils/colors/colors.dart';
import 'package:owner/view/screens/Booking/widgets/bookingList.dart';
import 'package:owner/view/screens/Booking/widgets/bookingtitle.dart';
import 'package:sizer/sizer.dart';

class booking extends StatelessWidget {
  const booking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wh,
      appBar: AppBar(
        centerTitle: true,
        title: alltext(
            txt: "Bookings", col: wh, siz: 13.sp, wei: FontWeight.w400, max: 1),
        toolbarHeight: 10.h,
        backgroundColor: pp,
      ),
      // ignore: prefer_const_constructors
      body: SingleChildScrollView(
        // ignore: prefer_const_constructors
        child: Column(
          children: [
            bookingtitles(),
            Obx(() => bookingdatas.isLoading.value
                ? Padding(
                    padding: EdgeInsets.only(top: 30.h),
                    child: const Center(child: CircularProgressIndicator()),
                  )
                : bookingList()),
          ],
        ),
      ),
    );
  }
}
