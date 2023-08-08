// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:owner/utils/colors/colors.dart';
import 'package:sizer/sizer.dart';

////<-------textfield--------->///
Widget add_show_textfield({
  required BuildContext context,
  required String hint,
  required IconData ico,
  required String mess,
  required TextEditingController cont,
  required var type,
  required String help,
  required suffixicon,
}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(
      height: 9.h,
      child: TextFormField(
        style: TextStyle(color: bl, fontSize: 8.sp),
        keyboardType: type,

        controller: cont,
        decoration: InputDecoration(
            suffixIcon: suffixicon,
            helperText: help,
            prefixIconColor: bl,
            filled: true,
            // ignore: sort_child_properties_last
            prefixIcon: Icon(ico),
            fillColor: wh,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(1.h),
            ),
            hintText: hint,
            helperStyle: TextStyle(color: bl),
            hintStyle: TextStyle(color: bl, fontSize: 9.sp)),

        ////<-------validation--------->///
        validator: (value) {
          if (value == null || value.isEmpty) {
            return mess;
          } else if (value.length < 3) {
            return "Enter Minimum 6 Key words ";
          } else {
            return null;
          }
        },
      ),
    ),
  );
}
