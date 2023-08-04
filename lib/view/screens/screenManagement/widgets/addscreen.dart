// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:owner/service/addscreens.dart/addscree_service.dart';
import 'package:owner/service/currentowner/currentownerservice.dart';
import 'package:owner/utils/alltext/alltext.dart';
import 'package:owner/utils/colors/colors.dart';
import 'package:owner/view/screens/screenManagement/widgets/texfields.dart';
import 'package:sizer/sizer.dart';

final addsc = Get.put(screen_add_Service());

final ownerl = Get.put(get_current_owner());

class addscreen extends StatelessWidget {
  final scree = TextEditingController();
  final rows = TextEditingController();
  final columns = TextEditingController();

  final screenkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gy.withOpacity(0.3),
      appBar: AppBar(
        backgroundColor: re,
        centerTitle: true,
        title: alltext2(
            txt: "Add Screen",
            col: wh,
            siz: 12.sp,
            wei: FontWeight.bold,
            max: 1),
        toolbarHeight: 10.h,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: blu),
                      borderRadius: BorderRadius.circular(1.h)),
                  child: Form(
                    key: screenkey,
                    child: Column(
                      children: [
                        addscreen_textfield(
                            hint: "screens",
                            ico: Icons.tv,
                            mess: "please fill this ",
                            cont: scree,
                            type: TextInputType.number,
                            help: "Add screens"),
                        addscreen_textfield(
                            hint: "rows",
                            ico: Icons.table_rows,
                            mess: "please fill this ",
                            cont: rows,
                            type: TextInputType.number,
                            help: "Add Rows"),
                        addscreen_textfield(
                            hint: "columns",
                            ico: Icons.view_column_sharp,
                            mess: "plese fill this ",
                            cont: columns,
                            type: TextInputType.number,
                            help: "Add columns"),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: 5.h,
                                width: 50.w,
                                child: ElevatedButton.icon(
                                  onPressed: () async {
                                    // ignore: avoid_print
                                    print(ownerl.reply.data.id.toString());
                                    addsc.getadd_screen_service(
                                        ownerid:
                                            ownerl.reply.data.id.toString(),
                                        screenno: scree.text.toString(),
                                        rows: rows.text.toString(),
                                        columns: columns.text.toString(),context: context);
                                  },
                                  icon: Icon(
                                    Icons.add,
                                    color: wh,
                                  ),
                                  label: alltext(
                                      txt: "Add Screen",
                                      col: wh,
                                      siz: 13.sp,
                                      wei: FontWeight.bold,
                                      max: 1),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: yl),
                                )),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                  height: 5.h,
                                  width: 30.w,
                                  child: ElevatedButton.icon(
                                    onPressed: () {
                                      scree.clear();
                                      rows.clear();
                                      columns.clear();
                                    },
                                    icon: Icon(
                                      Icons.close,
                                      color: wh,
                                    ),
                                    label: alltext(
                                        txt: "clear",
                                        col: wh,
                                        siz: 13.sp,
                                        wei: FontWeight.bold,
                                        max: 1),
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: gr),
                                  )),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                      ],
                    ),
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
