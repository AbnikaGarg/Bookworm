import 'dart:async';

import 'package:bookwormnew/service/api_client.dart';
import 'package:bookwormnew/utils/app_constants.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/response/response.dart';

class AuthRepo {
  final ApiClient apiClient;
  AuthRepo({required this.apiClient});
  Future<Response?> login(String username, String password) async {
    var map =  Map<String, dynamic>();
    map['auth_key'] ="VM3rzOcsspw2F4R0TWNlrubdPqY6v7WJ";
    map['user_name'] = username;
    map['password'] = password;
    map['device_token'] = "aoZ2WybguJ5KRET9";
    return await apiClient.postData(AppConstant.login,map);
  }
}
