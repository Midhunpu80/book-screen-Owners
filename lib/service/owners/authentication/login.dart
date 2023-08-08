// ignore_for_file: camel_case_types, unused_local_variable, use_build_context_synchronously

import 'dart:convert';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:owner/constants/endpoints/endpoint.dart';
import 'package:http/http.dart' as http;
import 'package:owner/utils/colors/colors.dart';

import 'package:owner/view/screens/Home/home.dart';
import 'package:owner/view/screens/screenManagement/widgets/dialog.dart';
import 'package:sizer/sizer.dart';

class loginService extends GetxController {
  // late Ownersignup10 reply;

  var isloading = false.obs;

  end e = end();
  // ignore: non_constant_identifier_names
  getowner_Login({
    BuildContext? context,
    required String email,
    required String password,
  }) async {
    final Map<String, dynamic> bdy = {
      "email": email.toString(),
      "password": password.toString()
    };
    try {
      final response = await http.post(Uri.parse(e.login_url),
          headers: {
            'Content-Type': 'application/json;charset=utf-8',
            'Accept': 'application/json'
          },
          body: jsonEncode(bdy),
          encoding: Encoding.getByName('utf-8'));

      if (response.statusCode == 200) {
        Map<String, dynamic> reply = jsonDecode(response.body.toString());
        update();

        Navigator.of(context!)
            .pushReplacement(MaterialPageRoute(builder: (context) => Home()));

        Get.snackbar("Logined", "Logined sucess",
            backgroundColor: gr, maxWidth: 20.h, margin: EdgeInsets.all(10.h));

        print(
            "<--------logined----------------${reply.toString()}-------------logined---------------->");
        return reply;
      } else {
        reawsome(
            context: context!,
            txt: "Faild",
            des: "no user found",
            Type: DialogType.ERROR);
        update();
        throw ("Logined Failed");
      }
    } catch (e) {
      throw ("Login failed ${e}");
    }
  }

  @override
  void dispose() {
    super.dispose();

    getowner_Login(email: "", password: "");
  }
}
