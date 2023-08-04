// ign;ore_for_file: prefer_const_constructors, camel_case_types

// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:owner/service/getcurrentscreens/screen_service.dart';
import 'package:owner/utils/alltext/alltext.dart';
import 'package:owner/utils/colors/colors.dart';
import 'package:owner/view/screens/screenManagement/widgets/addscreen.dart';
import 'package:owner/view/screens/screenManagement/widgets/head.dart';
import 'package:owner/view/screens/screenManagement/widgets/list.dart';
import 'package:sizer/sizer.dart';

final scdata = Get.put(get_current_screens());

// ignore: use_key_in_widget_constructors
class screenMangement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: gr,
        onPressed: () {
          scdata.getscreens(id: ownerl.reply.data.id.toString());
          Get.to(() => addscreen());
          print(ownerl.reply.data.id);
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
        child: Obx(
          () => scdata.isLoading.value
              ? Padding(
                  padding: EdgeInsets.only(top: 40.h),
                  child: const Center(child: CircularProgressIndicator()),
                )
              : Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    head(),
                    listofscreen(),
                  ],
                ),
        ),
      ),
    );
  }
}
