import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:owner/main.dart';
import 'package:owner/utils/alltext/alltext.dart';
import 'package:owner/utils/colors/colors.dart';
import 'package:owner/view/screens/Home/home.dart';

import 'package:sizer/sizer.dart';

// ignore: use_key_in_widget_constructors, camel_case_types
class routescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bl,
      body: Stack(
        children: [
          Center(child: Lottie.asset("images/wave2.json", repeat: true)),
          Positioned(
            top: 40.h,
            left: 30.w,
            child: InkWell(
              onTap: () async {
                Navigator.of(context).pushAndRemoveUntil(
                    (MaterialPageRoute(builder: (context) {
                      return Home();
                    })),
                    (route) => false);

               await ownerids.getrealowner();
                await monthsail.getmonthlysail(ids: ownerids.reply.data.id);
                await monthsail.getdaily_sail(ids: ownerids.reply.data.id);
                await monthsail.getstatus_sail(ids: ownerids.reply.data.id);
                await screemanagedata.getscreens(id: ownerids.reply.data.id);
                await showdata.getshows(id: ownerids.reply.data.id);
              },
              child: CircleAvatar(
                radius: 10.h,
                backgroundColor: yl,
                child: Center(
                  child: alltext2(
                      txt: "Click",
                      col: wh,
                      siz: 20.sp,
                      wei: FontWeight.bold,
                      max: 1),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
