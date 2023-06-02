// ignore_for_file: override_on_non_overriding_member


import 'package:get_storage/get_storage.dart';
import 'package:laundry/preferences/pref_helper.dart';


class AppPreference extends PreferenceHelper {
  var pref = GetStorage("laundrypref");


  removePreference() {
    pref.erase();
  }

}
