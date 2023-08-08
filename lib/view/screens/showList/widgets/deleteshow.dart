import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:owner/main.dart';
import 'package:owner/service/addshowservice/addshowservice.dart';

final show_deleted = Get.put(addshows_service());

deleteshowlist(BuildContext context, var index) {
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
 

      addshowstointernet.get_delete_show(
          idt: showdata.reply!.data[index].id.toString(), context: context);
    },
  )..show();
}
