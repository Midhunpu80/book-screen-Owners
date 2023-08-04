// ignore_for_file: avoid_print, deprecated_member_use, constant_pattern_never_matches_value_type, camel_case_types, unused_local_variable, unnecessary_brace_in_string_interps, invalid_use_of_protected_member

import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:owner/constants/endpoints/endpoint.dart';
import 'package:owner/constants/token.dart';

dynamic jwt;

class get_current_screens extends GetxController {
  // final dsa = Get.put(get_current_screens());
  var isLoading = false.obs;

  // late Screen10 reply;
  final dataList = <dynamic>[].obs;
  var dcp = <dynamic>[].obs;

  var screens = <Map<String, dynamic>>[].obs;
  var nata = {}.obs;

  getscreens({required var id}) async {
    try {
      isLoading(true);
      end j = end();
      final response =
          await http.get(Uri.parse("${j.screen_url}${id}"), headers: {
        'Content-Type': 'application/json;charset=utf-8',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token'
      });

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        dataList.value.assignAll(data['data']);
        print(data['data']);

        isLoading(false);

        print(">--------------${dcp}---------------->");

        print(
            "-<-------sucess--------------${dataList}---------sucess--------->");
        update();
        //}//
        return dataList.toSet();
      } else {
        print("failed");
        isLoading(false);
        throw Exception("Failed");
      }
    } catch (e) {
      throw Exception("Failed$e");
    }
  }

  @override
  void onInit() {
    super.onInit();
    // fetchdata(id: "");

    getscreens(id: "");
  }
}
