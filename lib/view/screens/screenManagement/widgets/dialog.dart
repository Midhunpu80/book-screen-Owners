// ignore_for_file: avoid_types_as_parameter_names, non_constant_identifier_names

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:owner/main.dart';
import 'package:owner/service/deletescreen/delete_screenservice.dart';
import 'package:owner/service/getcurrentscreens/screen_service.dart';
import 'package:owner/view/screens/Authentication/reg&otp/logorReg.dart';
import 'package:owner/view/screens/Home/home.dart';
import 'package:owner/view/screens/Home/widgets/drawer.dart';

import '../../../../constants/token.dart';

awsome(BuildContext context, var index) {
  final dele = Get.put(get_Delete_screen());
  // ignore: unused_local_variable
  final adds = Get.put(get_current_screens());

  return AwesomeDialog(
    context: context,
    dialogType: DialogType.ERROR,
    animType: AnimType.BOTTOMSLIDE,
    title: 'Delete',
    desc: 'if you sure to delete this screen',
    btnCancelOnPress: () {
      Get.back();
    },
    btnOkOnPress: () async {
      dele.getdeletescreen(
          ids: screemanagedata.reply.data[index].id.toString(),
          context: context,
          index: index);
    },
  )..show();
}

reawsome(
    {required BuildContext context,
    required String txt,
    required String des,
    required var Type}) {
  return AwesomeDialog(
    context: context,
    dialogType: Type,
    animType: AnimType.BOTTOMSLIDE,
    title: txt,
    desc: des,
    btnCancelOnPress: () {
      // Get.back();
      Navigator.of(context).pop();
    },
    btnOkOnPress: () => Get.to(() => Home()),
  )..show();
}

Logoutreawsome(
    {required BuildContext context,
    required String txt,
    required String des,
    required var Type}) {
  return AwesomeDialog(
      context: context,
      dialogType: Type,
      animType: AnimType.BOTTOMSLIDE,
      title: txt,
      desc: des,
      btnCancelOnPress: () {
        // Get.back();
        Get.to(() => Home());
      },
      btnOkOnPress: () {
        st.delete(key: newtokens);
        st.delete(key: loacalemail);
        st.delete(key: loacalpass);
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) {
          return const logorReg();
        }), (route) => false);
      })
    ..show();
}
