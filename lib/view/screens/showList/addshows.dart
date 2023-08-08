// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:owner/utils/alltext/alltext.dart';
import 'package:owner/utils/colors/colors.dart';

import 'package:owner/view/screens/showList/widgets/otherfields.dart';

import 'package:sizer/sizer.dart';

class addshows extends StatelessWidget {
  final t1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gy,
      appBar: AppBar(
        backgroundColor: pp,
        toolbarHeight: 10.h,
        centerTitle: true,
        title: alltext(
            txt: "Add shows",
            col: wh,
            siz: 13.sp,
            wei: FontWeight.bold,
            max: 1),
      ),
      body: SingleChildScrollView(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  height: 80.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1.h), color: yl),
                  child: Column(
                    children: [
                      otherfields(context: context),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
