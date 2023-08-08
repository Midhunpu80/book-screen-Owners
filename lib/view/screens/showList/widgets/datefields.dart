import 'package:flutter/material.dart';
import 'package:owner/view/screens/showList/widgets/showtitle.dart';
import 'package:owner/view/screens/showList/widgets/textfields.dart';
import 'package:sizer/sizer.dart';

Widget datetextfiled({required BuildContext context}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        height: 18.h,
        width: 44.w,
        child: add_show_textfield(
            //  pickbutton:pickdate(context) ,
            context: context,
            suffixicon: InkWell(
                onTap: () {
                  pickdate(context);
                },
                // ignore: prefer_const_constructors
                child: Icon(Icons.calendar_month)),
            hint: "Start Date",
            ico: Icons.calendar_month,
            mess: "is not completed",
            cont: datecontroll.textEditingControllerstart.value,
            type: TextInputType.datetime,
            help: "Start Date"),
      ),
      SizedBox(
        height: 18.h,
        width: 44.w,
        child: add_show_textfield(
            // pickbutton: pickdate2(context),
            context: context,
            suffixicon: InkWell(
                onTap: () {
                  pickdate2(context);
                },
                // ignore: prefer_const_constructors
                child: Icon(Icons.calendar_month)),
            hint: "End Date",
            ico: Icons.calendar_month,
            mess: "is not completed",
            cont: datecontroll.textEditingControllerend.value,
            type: TextInputType.datetime,
            help: "End Date"),
      )
    ],
  );
}
