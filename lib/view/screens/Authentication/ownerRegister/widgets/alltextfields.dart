import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:owner/utils/alltext/alltext.dart';
import 'package:owner/utils/colors/colors.dart';
import 'package:owner/view/screens/Authentication/ownerRegister/ownerreg.dart';
import 'package:owner/view/screens/Authentication/ownerRegister/widgets/regbutton.dart';
import 'package:owner/view/screens/Authentication/ownerRegister/widgets/textfield.dart';
import 'package:owner/view/screens/Authentication/reg&otp/logorReg.dart';
import 'package:sizer/sizer.dart';

Widget alltextfields() {
  return Padding(
    padding: const EdgeInsets.all(13.0),
    // ignore: sized_box_for_whitespace
    child: Card(
      child: Container(
          height: 105.h,
          width: 100.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1.h),
              gradient: LinearGradient(
                colors: [re, bl],
              )),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                reg_textfield("Theater Name", Icons.theaters, "name", theater,
                    TextInputType.text, "Theater name"),
                reg_textfield("Ex:user@gmail.com", Icons.email, "name", email,
                    TextInputType.text, "Email"),
                reg_textfield(
                    "KJF456JDKDDKD4",
                    Icons.local_convenience_store,
                    "name",
                    licence,
                    TextInputType.text,
                    "Theater Licence Number"),
                reg_textfield("Ex:9965656555", Icons.phone, "name", phone,
                    TextInputType.text, "phone"),
                reg_textfield("Ex:Banglore", Icons.location_city, "name",
                    location, TextInputType.text, "Location"),
                reg_textfield("Ex:8568745625", Icons.iso_rounded, "name", idno,
                    TextInputType.text, "Id proof No"),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Row(
                    children: [
                      InkWell(
                        splashColor: wh,
                        onTap: () {
                          picked.pick();
                        },
                        child: Container(
                          height: 5.h,
                          decoration: BoxDecoration(
                              border: Border.all(width: 0, color: wh),
                              borderRadius: BorderRadius.circular(1.h)),
                          child: TextButton.icon(
                              onPressed: () async {
                                picked.pick();
                              },
                              icon: Icon(
                                Icons.image,
                                color: wh,
                                size: 2.h,
                              ),
                              label: alltext(
                                  txt: "Upload ID proof",
                                  col: wh,
                                  siz: 7.sp,
                                  wei: FontWeight.bold,
                                  max: 1)),
                        ),
                      ),
                      SizedBox(
                        width: 2.h,
                      ),
                      Container(
                        height: 4.h,
                        width: 8.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5), color: wh),
                        child: Obx(
                          () => picked.img.value == null
                              // ignore: prefer_const_constructors
                              ? SizedBox()
                              : Image.file(
                                  File(
                                    picked.img.value!.path,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                        ),
                      ),
                    ],
                  ),
                ),
                reg_textfield("password", Icons.lock, "name", pass,
                    TextInputType.number, "password"),
                reg_textfield("Confirm password", Icons.lock, "name", repass,
                    TextInputType.number, "Confirm password"),
                SizedBox(
                  height: 2.h,
                ),
                newRegbutton(),
              ],
            ),
          )),
    ),
  );
}
