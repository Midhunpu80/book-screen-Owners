// ignore_for_file: avoid_print, deprecated_member_use, constant_pattern_never_matches_value_type, camel_case_types, unused_local_variable

import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:owner/constants/endpoints/endpoint.dart';
import 'package:owner/constants/token.dart';
import 'package:owner/models/owner/ownerdetailsmodel/currecntowner.dart';

dynamic jwt;

class get_current_owner extends GetxController {
  var isLoading = false.obs;

  late Currentowner10 reply;

  getrealowner() async {
    try {
      isLoading(true);
      end j = end();
      final response = await http.get(Uri.parse(j.current_owner_url), headers: {
        'Content-Type': 'application/json;charset=utf-8',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token'
      });

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        reply = Currentowner10.fromJson(data);
        print(
            "-<------------------------${reply.data.adhaar.toString()}------------------------->-");

        update();
        isLoading(false);
        return reply;
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
    getrealowner();
  }

  @override
  void dispose() {
    super.dispose();
    getrealowner();
  }
}
