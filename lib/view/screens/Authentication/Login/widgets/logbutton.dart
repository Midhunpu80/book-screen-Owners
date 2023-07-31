

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:owner/view/screens/Authentication/Login/Login.dart';

import 'package:sizer/sizer.dart';

import '../../../../../utils/alltext/alltext.dart';
import '../../../../../utils/colors/colors.dart';

////<-------Login Button--------->///
Widget newlogbutton() {
  // ignore: unused_local_variable
 
  return SizedBox(
    height: 7.h,
    width: 70.w,
    child: ElevatedButton.icon(
      onPressed: () async {
       
        if (formkey2.currentState!.validate()) {
     

          // ignore: unused_local_variable
          // var sata = con2.reply.data.map((e) => e.movieId).forEach((element) {
          //   con1.getMovies(ids: element);
    
       ///   });
        } else {
          // ignore: avoid_print
          print("data");
        }
      },
      icon: const Icon(
        Icons.login,
        color: Colors.transparent,
      ),
      label: alltext(txt: "Login", col: wh, siz: 14.sp, wei: FontWeight.bold, max: 1),
      style: ElevatedButton.styleFrom(backgroundColor: blu),
    ),
  );
}
