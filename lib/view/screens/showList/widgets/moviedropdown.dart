import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:owner/main.dart';
import 'package:owner/utils/alltext/alltext.dart';
import 'package:owner/utils/colors/colors.dart';
import 'package:owner/view/screens/showList/widgets/showtitle.dart';
import 'package:sizer/sizer.dart';

Widget moviedropdown() {
  return Column(
    children: [
      //(txt: , col: bl, siz: 12.sp, wei: FontWeight.bold, max: 1),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 0,
          child: Container(
            height: 5.h,
            width: 100.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1.h),
                color: re.withOpacity(0.9)),
            child: Obx(
              () => Center(
                  child: alltext(
                      txt: datecontroll.datas.value.toString(),
                      col: bl,
                      siz: 11.sp,
                      wei: FontWeight.bold,
                      max: 1)),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 10.h,
        width: 100.w,

        ///color: bl,
        child: Obx(
          () => moviedata.isLoading.value
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 5.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1.h), color: wh)),
                )
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 5.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1.h), color: wh),
                    child: DropdownButton(
                        icon: Icon(
                          Icons.arrow_drop_down,
                          size: 5.h,
                          color: bl,
                        ),
                        itemHeight: 10.h,
                        items: List.generate(
                            moviedata.reply.data.length,
                            (index) => DropdownMenuItem<dynamic>(
                                  value: moviedata.reply.data[index].title,
                                  child: SizedBox(
                                      height: 40.h,
                                      width: 70.w,

                                      //    color: Colors.amber,
                                      child: Row(
                                        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          alltext(
                                              txt: "${index + 1}",
                                              col: bl,
                                              siz: 12.sp,
                                              wei: FontWeight.bold,
                                              max: 5),
                                          SizedBox(
                                            width: 2.w,
                                          ),
                                          SizedBox(
                                            width: 60.w,
                                            child: alltext(
                                                txt: moviedata
                                                    .reply.data[index].title
                                                    .toString(),
                                                col: bl,
                                                siz: 11.sp,
                                                wei: FontWeight.bold,
                                                max: 6),
                                          )
                                        ],
                                      )),
                                )).toList(),
                        onChanged: (val) {
                          // ignore: avoid_print
                          print(val);
                          datecontroll.nechange(value: val);
                        }),
                  ),
                ),
        ),
      ),
    ],
  );
}
