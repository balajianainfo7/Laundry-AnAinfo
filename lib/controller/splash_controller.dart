import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/controller/base_controller.dart';
import 'package:laundry/resources/app_routes.dart';

class SplashController extends BaseController{

  @override
  void onInit() {
    checkLogin();
    super.onInit();
  }

  checkLogin(){

    Future.delayed(Duration(seconds: 5)).then((value) {
      Get.toNamed(RouteNames.onBoarding);
      
    });
  }
   
}

