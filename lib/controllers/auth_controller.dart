import 'dart:convert';

import 'package:bookwormnew/bindings/shared_pref.dart';
import 'package:bookwormnew/components/customsnackbar.dart';
import 'package:bookwormnew/components/loader.dart';
import 'package:bookwormnew/models/LoginResponse.dart';
import 'package:bookwormnew/routes/routes.dart';
import 'package:bookwormnew/service/api_client.dart';
import 'package:bookwormnew/service/auth_repo.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final username = TextEditingController();
  final password = TextEditingController();
  final AuthRepo authRepo;
  AuthController({required this.authRepo});
  @override
  void onInit() {
    super.onInit();
  }

  login() async {
    Loader.showLoading();
    authRepo.login(username.text, password.text).then((value) {
      print(value!.statusCode);
      Loader.hideLoading();
      switch (value.statusCode) {
        case 200:
          final body = json.decode(value.body);
          if (body["status"] == "error") {
            customSnackBar("Invalid Credentails");
            return;
          }
          LoginResponse response =
              LoginResponse.fromJson(json.decode(value.body));
          // response.add(response.fromJson(value.body));
          print(response.data!.loginKey);
          PreferenceUtils.saveUserToken(response.data!.loginKey.toString());
          PreferenceUtils.setString(
              "name", response.data!.userData![0].firstName.toString());
          PreferenceUtils.setString("registrationDate",
              response.data!.userData![0].registrationDate.toString());
          PreferenceUtils.setString(
              "wallet", json.encode(response.data!.allBalance?.toJson()));
          
          Get.offAllNamed(
            Routes.home,
          );
          break;

        default:
          customSnackBar("Invalid Credentails");
          break;
      }
    });
    //customSnackBar("message");
  }
}
