// ignore_for_file: avoid_types_as_parameter_names

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:owner/service/deletescreen/delete_screenservice.dart';
import 'package:owner/service/getcurrentscreens/screen_service.dart';

awsome(BuildContext context, var index) {
  final dele = Get.put(get_Delete_screen());
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
          ids: adds.dataList[index]['_id'].toString(), context: context);
    },
  )..show();
}

reawsome(
    {required BuildContext context,
    required String txt,
    required String des,
    // ignore: non_constant_identifier_names
    required var Type}) {
  return AwesomeDialog(
    context: context,
    dialogType: Type,
    animType: AnimType.BOTTOMSLIDE,
    title: txt,
    desc: des,
  )..show();
}