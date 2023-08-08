import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:owner/utils/alltext/alltext.dart';
import 'package:owner/utils/colors/colors.dart';
import 'package:owner/view/screens/showList/datepickercontroller/controller.dart';
import 'package:sizer/sizer.dart';

List<String> listshowsdatas = ["No", "Movie", "Price", "Action"];
final datecontroll = Get.put(date_pickcontroller());

Widget allshowstitle() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      elevation: 0,
      shadowColor: bl,
      child: Container(
        height: 10.h,
        width: 100.w,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(1.h), color:pp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      // ignore: sized_box_for_whitespace
                      child: Container(
                          width: 18.w,
                          child: Center(
                            child: alltext(
                                txt: listshowsdatas[index],
                                col: wh,
                                siz: 10.sp,
                                wei: FontWeight.bold,
                                max: 1),
                          )),
                    );
                  }),
            )
          ],
        ),
      ),
    ),
  );
}

pickdate(BuildContext context) {
  DateTime initialdate = datecontroll.selectedDate.value;
  showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1.h),
                  color: blu.withOpacity(0.3)),
              height: 200,
              child: CupertinoDatePicker(
                initialDateTime: initialdate,
                onDateTimeChanged: (DateTime newDate) {
                  datecontroll.selectDate(newDate);
                },
              ),
            ),
          ),
        );
      });
}

pickdate2(BuildContext context) {
  DateTime initialdate = datecontroll.selectedDate.value;
  showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1.h),
                  color: blu.withOpacity(0.3)),
              height: 200,
              child: CupertinoDatePicker(
                initialDateTime: initialdate,
                onDateTimeChanged: (DateTime newDate) {
                  datecontroll.selectDate2(newDate);
                },
              ),
            ),
          ),
        );
      });
}
