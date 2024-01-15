import 'dart:convert';

import 'package:bookwormnew/bindings/shared_pref.dart';
import 'package:bookwormnew/models/LoginResponse.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  AllBalance? wallet;
  @override
  void onInit() {
    super.onInit();
    final rawJson = PreferenceUtils.getString('wallet') ?? '';
    // Map<String, dynamic> map = jsonDecode(rawJson);
    wallet = AllBalance.fromJson(json.decode(rawJson));
    print(wallet!.incomeWallet);
  }

  @override
  void dispose() {
    super.dispose();
  }
}
