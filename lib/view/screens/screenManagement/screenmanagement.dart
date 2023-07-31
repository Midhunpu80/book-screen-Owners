// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:owner/utils/alltext/alltext.dart';
import 'package:owner/utils/colors/colors.dart';
import 'package:owner/view/screens/screenManagement/widgets/head.dart';
import 'package:owner/view/screens/screenManagement/widgets/list.dart';
import 'package:sizer/sizer.dart';

// ignore: use_key_in_widget_constructors
class screenMangement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: gr,
        onPressed: () {
          // ignore: avoid_print
          print("taped");
        },
        child: Icon(
          Icons.add,
          color: wh,
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 10.h,
        centerTitle: true,
        title: alltext(
            txt: "Screen Mangement",
            col: wh,
            siz: 15.sp,
            wei: FontWeight.bold,
            max: 1),
        backgroundColor: re,
      ),
      body: SingleChildScrollView(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            head(),
            listofscreen(),
          ],
        ),
      ),
    );
  }
}
