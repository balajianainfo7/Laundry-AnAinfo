import 'package:get/get.dart';
import 'package:laundry/controller/base_controller.dart';

class HomeController extends BaseController{

  var tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
    
  }

}