import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:owner/constants/routes/routes.dart';
import 'package:owner/main.dart';
import 'package:owner/utils/alltext/alltext.dart';
import 'package:owner/utils/colors/colors.dart';
import 'package:sizer/sizer.dart';

Widget drawerdata() {
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
        CircleAvatar(
          backgroundColor: pp,
          radius: 10.h,
        ),
        SizedBox(
          height: 2.h,
        ),
        Divider(
          thickness: 1,
          color: gy,
        ),
        Container(
          height: 70.h,
          width: 100.w,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(1.h)),
          child: ListView.separated(
              itemBuilder: (context, index) {
                // ignore: sized_box_for_whitespace
                return Container(
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
                // ignore: prefer_const_constructors
                return SizedBox(
                  height: 4.h,
                );
              },
              itemCount: ownerpagetitle.length),
        ),
        Divider(
          thickness: 2,
          color: gr,
        ),
      ],
    ),
  );
}
