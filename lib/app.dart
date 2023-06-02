import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/binding/main_binding.dart';
import 'package:laundry/resources/app_routes.dart';
import 'package:laundry/resources/app_style.dart';

class App extends StatelessWidget {
  static final App _instance = App._internal();
  
  App._internal();

 
  factory App() {
    return _instance;
  }

  @override
  Widget build(BuildContext context) {
    // debugInvertOversizedImages = true;
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: MainBinding(),
      defaultTransition: Transition.leftToRight,
      title: 'Laundry',
      // darkTheme: AppStyles.darkTheme,
      // routes: Routes.routes, TODO : fix
      theme: AppStyles.lightTheme(),
      
      
      getPages: Routes.routes,
      initialRoute: RouteNames.splash,
      // getPages: [
      //   GetPage(name: '/recordDetails', page: () => RecordDetailsView())
      // ]
    );
  }
  
}