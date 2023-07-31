import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:owner/service/owners/authentication/register.dart';
import 'package:owner/utils/alltext/alltext.dart';
import 'package:owner/utils/colors/colors.dart';
import 'package:owner/view/screens/Authentication/Login/Login.dart';
import 'package:owner/view/screens/Authentication/ownerRegister/ownerreg.dart';
import 'package:sizer/sizer.dart';

final picked = Get.put(registerService());

class logorReg extends StatelessWidget {
  const logorReg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bl,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            ////<-------register animated  image --------->///
            // ignore: sized_box_for_whitespace
            Container(
              height: 40.h,
              width: 200.w,
              color: bl,
              child: Lottie.asset("images/sata.json"),
            ),
            SizedBox(
              height: 8.h,
            ),
            alltext(
                txt: "create new account ?",
                col: wh,
                siz: 13.sp,
                wei: FontWeight.bold,
                max: 1),
            SizedBox(
              height: 3.h,
            ),

            SizedBox(
                width: 80.w,
                height: 6.h,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => ownerRegister());
                    },
                    child: alltext(
                        txt: "Register",
                        col: wh,
                        siz: 13.sp,
                        wei: FontWeight.bold,
                        max: 1),
                    style: ElevatedButton.styleFrom(backgroundColor: blu))),
            SizedBox(
              height: 2.h,
            ),
            alltext(
                txt: "or", col: wh, siz: 13.sp, wei: FontWeight.bold, max: 1),
            SizedBox(
              height: 2.h,
            ),
////<-------navigation---------->///
///////<-------Login---------->///
            SizedBox(
                width: 80.w,
                height: 6.h,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(login());
                    },
                    child: alltext(
                        txt: "Login",
                        col: wh,
                        siz: 13.sp,
                        wei: FontWeight.bold,
                        max: 1),
                    style: ElevatedButton.styleFrom(backgroundColor: yl))),
            SizedBox(
              height: 5.h,
            ),
            alltext(
                txt: "Alredy have an account ? Signup",
                col: wh,
                siz: 11.sp,
                wei: FontWeight.bold,
                max: 1)
          ],
        ),
      ),
    );
  }
}
