import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:owner/constants/token.dart';

import 'package:owner/utils/colors/colors.dart';
import 'package:owner/view/screens/Authentication/reg&otp/logorReg.dart';
import 'package:owner/view/screens/Home/home.dart';
import 'package:sizer/sizer.dart';

// ignore: use_key_in_widget_constructors
class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    getsplash();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ///final spla = Get.to(() => splash());

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 100.h,
        width: 100.w,
        color: blu,
      ),
    );
  }

  Future<void> getsplash() async {
    // ignore: prefer_const_constructors
    final st = new FlutterSecureStorage();
    // ignore: prefer_const_constructors
    await Future.delayed(Duration(seconds: 8));
    if (await st.read(key: loacalemail) == null ||
        await st.read(key: loacalpass) == null ||
        await st.read(key: newtokens) == null)
      // ignore: curly_braces_in_flow_control_structures, prefer_const_constructors
      Get.to(() => logorReg());
    else {
      Get.to(() => Home());
    }
  }
}
