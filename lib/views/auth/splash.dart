import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/controller/splash_controller.dart';
import 'package:laundry/resources/app_colors.dart';
import 'package:lottie/lottie.dart';

class Splash extends StatelessWidget {
   Splash({Key? key}) : super(key: key);

  final controller = Get.find<SplashController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: AppColors.white,
      child: Center(
        child: Container(
            height: 140,
            width: 140,
            alignment: AlignmentDirectional.center,
            child: Lottie.asset(
              "assets/loading/laundry.json",
            )),
      ),
    );
  }
}
