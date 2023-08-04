// ignore_for_file: avoid_print, deprecated_member_use, constant_pattern_never_matches_value_type, camel_case_types, unused_local_variable

import 'dart:convert';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:owner/constants/endpoints/endpoint.dart';
import 'package:owner/constants/token.dart';
import 'package:owner/view/screens/screenManagement/widgets/dialog.dart';

dynamic jwt;

class get_Delete_screen extends GetxController {
  var isLoading = false.obs;

  getdeletescreen({required var ids, BuildContext? context}) async {
    final bdy = {"screenId": ids};
    try {
      end j = end();
      final response = await http.post(Uri.parse(j.delete_screen_url),
          headers: {
            'Content-Type': 'application/json;charset=utf-8',
            'Accept': 'application/json',
            'Authorization': 'Bearer $token'
          },
          body: jsonEncode(bdy));

      if (response.statusCode == 200) {
        var reply = jsonDecode(response.body);
        reawsome(
            Type: DialogType.SUCCES,
            context: context!,
            txt: "sucess",
            des: "sucessfuly deleted");

        print(
            "-<---------delted---------------${reply.toString()}------------delted------------->-");

        update();

        return reply;
      } else {
        print("failed");

        throw Exception("Failed");
      }
    } catch (e) {
      throw Exception("Failed$e");
    }
  }

  @override
  void onInit() {
    super.onInit();
    getdeletescreen(ids: "");
  }

  @override
  void dispose() {
    super.dispose();
    getdeletescreen(ids: "");
  }
}
