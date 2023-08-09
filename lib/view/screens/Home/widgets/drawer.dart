// ignore_for_file: prefer_const_constructors

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:owner/constants/routes/routes.dart';
import 'package:owner/main.dart';
import 'package:owner/utils/alltext/alltext.dart';
import 'package:owner/utils/colors/colors.dart';
import 'package:owner/view/screens/profile/profile.dart';
import 'package:owner/view/screens/screenManagement/widgets/dialog.dart';
import 'package:sizer/sizer.dart';

final st = FlutterSecureStorage();

Widget drawerdata({required BuildContext context}) {
  List<String> ownerpagetitle = [
    "Screen Management",
    "showList",
    "Booking",
    "Chat",
  ];

  return SingleChildScrollView(
    child: Column(
      children: [
        SizedBox(
          height: 5.h,
        ),
        SizedBox(
          child: alltext(
              txt: "OWNER PAGE",
              col: bl,
              siz: 15.sp,
              wei: FontWeight.bold,
              max: 1),
        ),
        SizedBox(
          height: 3.h,
        ),

        /////////////////////owner profile section ///////////////////////////////////
        CircleAvatar(
          backgroundColor: pp,
          radius: 8.h,
          child: IconButton(
              onPressed: () {
                Get.to(() => profilescreen());
              },
              icon: Icon(
                Icons.person,
                color: wh,
                size: 13.h,
              )),
        ),
        ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        SizedBox(
          height: 2.h,
        ),
        Divider(
          thickness: 1,
          color: gy,
        ),
        Container(
          height: 40.h,
          width: 100.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1.h),
          ),
          child: ListView.separated(
              itemBuilder: (context, index) {
                // ignore: sized_box_for_whitespace
                return Container(
                  // color: blu,
                  height: 5.h,
                  child: ListTile(
                    splashColor: pp,
                    hoverColor: gr,
                    onTap: () {
                      ///  ownerids.getrealowner();

                      //////////////////////passing the all screens id s///////////////////////////////////////
                      ///
                      Get.to(routes[index]);
                      bookingdatas.getbooking(id: ownerids.reply.data.id);
                      screemanagedata.getscreens(id: ownerids.reply.data.id);
                      showdata.getshows(id: ownerids.reply.data.id);
                    },
                    leading: Icon(
                      Icons.apple_rounded,
                      color: bl,
                      size: 3.h,
                    ),
                    ////////////////////////////////////////////////////////////////////////////
                    title: alltext(
                        txt: ownerpagetitle[index].toString(),
                        col: bl,
                        siz: 11.sp,
                        wei: FontWeight.w500,
                        max: 1),
                    trailing: IconButton(
                        onPressed: () {
                          ownerids.getrealowner();

                          //////////////////////passing the all screens id s///////////////////////////////////////
                          ///
                          Get.to(routes[index]);
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: bl,
                          size: 2.h,
                        )),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 4.h,
                );
              },
              itemCount: ownerpagetitle.length),
        ),
        Divider(
          thickness: 2,
          color: gy,
        ),
        SizedBox(
          height: 10.h,
        ),

        SizedBox(
          height: 5.h,
          width: 70.w,
          child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(backgroundColor: pp),
              onPressed: () {
                Logoutreawsome(
                    context: context,
                    txt: "Logout",
                    des: "Are you Sure to Logout your account ?",
                    Type: DialogType.QUESTION);
              },
              icon: Icon(
                Icons.logout,
                color: wh,
              ),
              label: alltext(
                  txt: "Logout",
                  col: wh,
                  siz: 12.sp,
                  wei: FontWeight.bold,
                  max: 1)),
        )
      ],
    ),
  );
}
