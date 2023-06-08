
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:laundry/views/Detailed/detailed_page.dart';
import 'package:laundry/views/Detailed/listing_page.dart';
import 'package:laundry/views/Tracking/tracking_placed.dart';
import 'package:laundry/views/auth/splash.dart';
import 'package:laundry/views/home/home_page.dart';
import 'package:laundry/views/map/orderTracking.dart';

import '../views/Detailed/detailed_pickup.dart';
import '../views/auth/onbording.dart';
import '../views/home/features_home.dart';

class Routes {
  //this is to prevent anyone from instantiating this object
  Routes._();

  /// routes list
  static List<GetPage<dynamic>> routes = [
    GetPage(name: RouteNames.splash, page: () => Splash()),
    GetPage(name: RouteNames.onBoarding, page: () => OnbordingScreen()),
    GetPage(name: RouteNames.homePage, page: () => HomePage()),
    GetPage(name: RouteNames.homeFeatures, page: () => FeaturesHome()),
    GetPage(name: RouteNames.detailedPage, page: () => DetailedPage()),
    GetPage(name: RouteNames.detailedPickup, page: () => PickUpTimePage()),
    GetPage(name: RouteNames.trackingPlace, page: () => TrackingPlace()),
    GetPage(name: RouteNames.trackingMap, page: () => OrderTrackingPage(double.parse("9.9252007"), double.parse("78.1197754"))),
    GetPage(name: RouteNames.listingPage, page: () => ListingPage()),
    
    
  ];
}

class RouteNames {
  /// Your password screen
  static const splash = '/splash';
  static const onBoarding = '/onbording';
  static const homePage = '/home_page';
  static const homeFeatures = '/features_home';
  static const detailedPage = '/detailed_page';
  static const detailedPickup = '/detailed_pickup';
  static const trackingPlace = '/tracking_placed';
  static const trackingMap = '/orderTracking';
  static const listingPage = '/listing_page';
  
}
