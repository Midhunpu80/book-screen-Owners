// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:owner/utils/alltext/alltext.dart';
import 'package:owner/utils/colors/colors.dart';
import 'package:owner/view/screens/Authentication/ownerRegister/widgets/alltextfields.dart';
import 'package:sizer/sizer.dart';

TextEditingController theater = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController licence = TextEditingController();
TextEditingController phone = TextEditingController();
TextEditingController location = TextEditingController();
TextEditingController idno = TextEditingController();
TextEditingController pass = TextEditingController();
TextEditingController repass = TextEditingController();

var regkey = GlobalKey<FormState>();

// ignore: use_key_in_widget_constructors
class ownerRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: bl,
          // appBar: AppBar(
          //   backgroundColor: wh,
          // ),
          body: SingleChildScrollView(
            child: Form(
              key: regkey,
              child: Column(
                children: [
                  SizedBox(
                    height: 1.h,
                  ),
                  InkWell(
                      onTap: () {
                        theater.clear();
                        email.clear();
                        licence.clear();
                        phone.clear();
                        location.clear();
                        idno.clear();
                        pass.clear();
                        repass.clear();
                      },
                      child: alltext(
                          txt: "REGISTER",
                          col: wh,
                          siz: 15.sp,
                          wei: FontWeight.bold,
                          max: 2)),
                  alltextfields(),
                ],
              ),
            ),
          )),
    );
  }
}
