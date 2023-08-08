// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:owner/main.dart';
import 'package:owner/utils/alltext/alltext.dart';
import 'package:owner/utils/colors/colors.dart';
import 'package:owner/view/screens/screenManagement/widgets/addscreen.dart';
import 'package:owner/view/screens/showList/widgets/datefields.dart';
import 'package:owner/view/screens/showList/widgets/moviedropdown.dart';
import 'package:owner/view/screens/showList/widgets/showtitle.dart';
import 'package:owner/view/screens/showList/widgets/textfields.dart';
import 'package:sizer/sizer.dart';

List<String> cant = ["nobody", "level", "commom", "throww", "even", "some"];
List<String> can = ["nobody", "level", "commom", "throww", "even", "some"];
Widget otherfields({required BuildContext context}) {
  // ignore: unused_local_variable
  final tt = TextEditingController();
  return Column(
    children: [
      SizedBox(
        height: 5.h,
      ),
      // ignore: sized_box_for_whitespace
      moviedropdown(),

      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20.h,
            width: 44.w,
            child: add_show_textfield(
                context: context,
                hint: "Time",
                ico: Icons.timelapse_sharp,
                mess: "not accepted",
                cont: datecontroll.time.value,
                type: TextInputType.datetime,
                help: "movie name",
                suffixicon: Icon(Icons.timelapse_outlined)),
          ),
          SizedBox(
              height: 20.h,
              width: 44.w,
              child: add_show_textfield(
                  context: context,
                  hint: "Price",
                  ico: Icons.price_check_outlined,
                  mess: "not accepted",
                  cont: datecontroll.price.value,
                  type: TextInputType.text,
                  help: "movie name",
                  suffixicon: Icon(Icons.price_check_sharp))),
        ],
      ),
      datetextfiled(context: context),
      Obx(
        () => Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1.h), color: wh),
          width: 40.w,
          height: 7.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              alltext(
                  txt: datecontroll.selectedm.value.toString(),
                  col: bl,
                  siz: 10.sp,
                  wei: FontWeight.bold,
                  max: 1),
              Obx(
                () => screemanagedata.isLoading.value
                    ? SizedBox()
                    : DropdownButton(
                        itemHeight: 10.h,
                        items: List.generate(
                            screemanagedata.reply.data.length,
                            (index) => DropdownMenuItem<dynamic>(
                                value: screemanagedata.reply.data[index].screen
                                    .toString(),
                                child: alltext(
                                    txt: screemanagedata
                                        .reply.data[index].screen
                                        .toString()
                                        .toString(),
                                    col: bl,
                                    siz: 12.sp,
                                    wei: FontWeight.bold,
                                    max: 1))),
                        onChanged: (val) {
                          // ignore: avoid_print
                          print(val);
                          datecontroll.changed(val);
                        }),
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        height: 3.h,
      ),
      Obx(
        () => submitbutton(
            context: context,
            movie: datecontroll.datas.value,
            time: datecontroll.time.value.text,
            startdate: datecontroll.textEditingControllerstart.value.text,
            enddate: datecontroll.textEditingControllerend.value.text,
            price: datecontroll.price.value.text,
            screen: datecontroll.selectedm.value),
      )
    ],
  );
}

Widget submitbutton(
    {required var movie,
    required var time,
    required var startdate,
    required var enddate,
    required var price,
    required var screen,
    required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      SizedBox(
        height: 5.h,
        width: 50.w,
        child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(backgroundColor: blu),
            onPressed: () {
              // ignore: avoid_print
              print(
                  "${ownerl.reply.data.id.toString()}${movie.toString()}${time.toString()}${startdate.toString()}${enddate.toString()}${price.toString()}${screen.toString()}");
              addshowstointernet.get_addshows(
                  context: context,
                  owner: ownerl.reply.data.id.toString(),
                  movie: movie.toString(),
                  time: time.toString(),
                  startdate: startdate.toString(),
                  enddate: enddate.toString(),
                  price: price.toString(),
                  screen: screen.toString());
            },
            icon: Icon(
              Icons.verified,
              color: wh,
            ),
            label: alltext(
                txt: "Submit",
                col: wh,
                siz: 12.sp,
                wei: FontWeight.bold,
                max: 1)),
      ),
      SizedBox(
        width: 3.h,
      ),
      SizedBox(
        height: 5.h,
        width: 30.w,
        child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(backgroundColor: re),
            onPressed: () {},
            icon: Icon(
              Icons.clear,
              color: wh,
            ),
            label: alltext(
                txt: "clear",
                col: wh,
                siz: 12.sp,
                wei: FontWeight.bold,
                max: 1)),
      ),
    ]),
  );
}
