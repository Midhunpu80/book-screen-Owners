// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:owner/main.dart';
import 'package:owner/service/get-shows/getshows.dart';
import 'package:owner/utils/alltext/alltext.dart';
import 'package:owner/utils/colors/colors.dart';
import 'package:owner/view/screens/screenManagement/widgets/addscreen.dart';
import 'package:owner/view/screens/showList/addshows.dart';
import 'package:owner/view/screens/showList/widgets/allshowslist.dart';
import 'package:owner/view/screens/showList/widgets/showtitle.dart';
import 'package:sizer/sizer.dart';

// ignore: use_key_in_widget_constructors
class showlist extends StatelessWidget {
  final everyshow = Get.put(getshows_service());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          everyshow.getshows(id: ownerl.reply.data.id);

          screemanagedata.getscreens(id: ownerl.reply.data.id);
          moviedata.getmovies();
          Get.to(() => addshows());
          ownerl.getrealowner();
        },
        backgroundColor: re,
        child: Icon(
          Icons.add,
          color: wh,
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: alltext(
            txt: "ShowList", col: wh, siz: 15.sp, wei: FontWeight.bold, max: 1),
        backgroundColor: pp,
        toolbarHeight: 10.h,
      ),
      body: SingleChildScrollView(
        // ignore: prefer_const_constructors
        child: Column(
          children: [
            allshowstitle(),
            allshowsList(),
          ],
        ),
      ),
    );
  }
}
