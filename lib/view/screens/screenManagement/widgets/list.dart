import 'package:flutter/material.dart';
import 'package:owner/utils/alltext/alltext.dart';
import 'package:owner/utils/colors/colors.dart';
import 'package:sizer/sizer.dart';

Widget listofscreen() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      child: Container(
        height: 70.h,
        width: 100.w,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(1.h), color: bl,border: Border.all(width: 3,color: blu)),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Container(
                    height: 10.h,
                    width: 100.w,
                    decoration: BoxDecoration(border: Border.all(width: 3,color: blu),borderRadius: BorderRadius.circular(1.h)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        allscreenMnagedatas(txt: "name"),
                      //  VerticalDivider(),
                        allscreenMnagedatas(txt: "name"),
                        //VerticalDivider(),
                        allscreenMnagedatas(txt: "name"),
                      //  VerticalDivider(),
                        allscreenMnagedatas(txt: "name"),
                       /// VerticalDivider(),
                        allscreenMnagedatas(txt: "name"),
                       // VerticalDivider(),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_vert_outlined,
                              color: bl,
                            ))
                      ],
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 1.h,
              );
            },
            itemCount: 20),
      ),
    ),
  );
}

Widget allscreenMnagedatas({required var txt}) {
  return alltext(txt: txt, col: bl, siz: 9.sp, wei: FontWeight.bold, max: 1);
}
