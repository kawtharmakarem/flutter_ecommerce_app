import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_ecommerce_app/core/constant/apptheme.dart';
import 'package:flutter_ecommerce_app/core/services/services.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController{
  Locale? language;
  MyServices myServices=Get.find();

  ThemeData appTheme=themeEnglish;

  changeLang(String langCode)
  {
  Locale locale=Locale(langCode);
  myServices.sharedPreferences.setString("lang", langCode);
  appTheme=langCode=="ar" ? themeArabic :themeEnglish;
  Get.changeTheme(appTheme);
  Get.updateLocale(locale);
  }
  @override
  void onInit() {
    if(myServices.sharedPreferences.getString("lang")=="ar"){
      language=const Locale("ar");
      appTheme=themeArabic;
    }else if(myServices.sharedPreferences.getString("lang")=="en"){
      language=const Locale("en");
      appTheme=themeEnglish;
    }else{
      language=Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}