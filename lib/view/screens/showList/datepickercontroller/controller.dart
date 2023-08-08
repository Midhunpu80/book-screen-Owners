import 'package:flutter/material.dart';
import 'package:get/get.dart';

class date_pickcontroller extends GetxController {
  Rx<DateTime> selectedDate = DateTime.now().obs;
  Rx<DateTime> selectedDate2 = DateTime.now().obs;
  Rx<TextEditingController> textEditingControllerstart =
      TextEditingController().obs;
  Rx<TextEditingController> textEditingControllerend =
      TextEditingController().obs;

  void selectDate(DateTime date) {
    selectedDate.value = date;
    textEditingControllerstart.value.text =
        "${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}";
  }

  void selectDate2(DateTime date) {
    selectedDate.value = date;
    textEditingControllerend.value.text =
        "${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}";
  }

  var selectedm = "Select".obs;
  void changed(String value) {
    selectedm.value = value;
    update();
  }

  var datas = "pick any movies".obs;
  void nechange({ var value}) {
    datas.value = value;
    update();

  }

  Rx<TextEditingController> movie = TextEditingController().obs;

  Rx<TextEditingController> time = TextEditingController().obs;

  Rx<TextEditingController> price = TextEditingController().obs;
}
