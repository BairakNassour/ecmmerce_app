import 'package:ecommerce_app/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController{
  Locale? language;
  MyServices myServices=Get.find();
  chnagelang(String langcode){
    Locale locale=Locale(langcode);
    myServices.sharedpreferences.setString("lang", langcode);
    Get.updateLocale(locale);
}
@override
  void onInit() {
    String? sharedprefLang= myServices.sharedpreferences.getString("lang");
    if(sharedprefLang=="ar"){
      language= const Locale("ar");
    }else if(sharedprefLang=="en"){
      language= const Locale("en");
    }else{
      language=Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}