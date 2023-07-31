import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:owner/models/owner/auth/singup.dart';
import 'package:owner/service/owners/authentication/register.dart';

import 'package:owner/view/screens/Authentication/ownerRegister/ownerreg.dart';

import 'package:sizer/sizer.dart';

import '../../../../../utils/alltext/alltext.dart';
import '../../../../../utils/colors/colors.dart';

////<-------Login Button--------->///
final os = Get.put(registerService());
Widget newRegbutton() {
  // ignore: unused_local_variable

  return SizedBox(
    height: 5.h,
    width: 60.w,
    child: ElevatedButton.icon(
      onPressed: () async {
        if (regkey.currentState!.validate()) {
          var ot = Ownersignup10(
              name: theater.text,
              email: email.text,
              adhaar: idno.text,
              licence: licence.text,
              location: location.text,
              phone: phone.text,
              password: pass.text);
          print("--------${ot.adhaar.toString()}----------");

          await os.getowner_otpservice(
            thetername: ot.name,
            email: ot.email,
            licence: ot.licence,
            phone: ot.phone,
            location: ot.location,
            idproof: ot.adhaar,
            password: ot.password,
          );
          print(email.text.toString());
        } else {
          // ignore: avoid_print
          print("data");
        }
      },
      icon: const Icon(
        Icons.login,
        color: Colors.transparent,
      ),
      label: alltext(
          txt: "Register", col: wh, siz: 14.sp, wei: FontWeight.bold, max: 1),
      style: ElevatedButton.styleFrom(backgroundColor: re),
    ),
  );
}
