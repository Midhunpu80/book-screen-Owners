// ignore_for_file: unused_local_variable, prefer_const_constructors, invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:owner/service/deletescreen/delete_screenservice.dart';
import 'package:owner/utils/alltext/alltext.dart';
import 'package:owner/utils/colors/colors.dart';
import 'package:owner/view/screens/screenManagement/screenmanagement.dart';
import 'package:owner/view/screens/screenManagement/widgets/dialog.dart';
import 'package:sizer/sizer.dart';

Widget listofscreen() {
  final delesc = Get.put(get_Delete_screen());
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      child: Container(
        height: 70.h,
        width: 100.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1.h),
            color: bl,
            border: Border.all(width: 3, color: blu)),
        child: Obx(
          () => scdata.dataList.value.isEmpty
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.separated(
                  itemBuilder: (context, index) {
                    // final s = scdata.reply.data[index];
                    final w = scdata.dataList[index];

                    // final sv =scdata.dataList.data;

                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Container(
                          height: 10.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              border: Border.all(width: 3, color: blu),
                              borderRadius: BorderRadius.circular(1.h)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                allscreenMnagedatas(txt: "${index + 1}"),
                                allscreenMnagedatas(
                                    txt: w['columns'].toString()),
                                allscreenMnagedatas(
                                    txt: w['columns'].toString()),
                                allscreenMnagedatas(
                                    txt: w['columns'].toString()),
                                IconButton(
                                    onPressed: () {
                                      awsome(context, index);
                                      //     AwesomeDialog(context: context);
                                    },
                                    icon: Icon(
                                      Icons.delete,
                                      color: re,
                                      size: 3.h,
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 1.h,
                    );
                  },
                  itemCount: scdata.dataList.toSet().length),
        ),
      ),
    ),
  );
}

Widget allscreenMnagedatas({required var txt}) {
  return alltext(txt: txt, col: bl, siz: 9.sp, wei: FontWeight.bold, max: 1);
}
