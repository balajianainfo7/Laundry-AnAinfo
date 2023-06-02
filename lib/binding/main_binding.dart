
import 'package:get/get.dart';
import 'package:laundry/controller/home_controller.dart';
import 'package:laundry/controller/splash_controller.dart';
import 'package:laundry/preferences/app_preference.dart';

class MainBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut<AppPreference>(()=> AppPreference(), fenix: true);
    Get.lazyPut<SplashController>(()=> SplashController(), fenix: true);
    Get.lazyPut<HomeController>(()=> HomeController(), fenix: true);
 }
}