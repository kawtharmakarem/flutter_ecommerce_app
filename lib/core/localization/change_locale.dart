import 'package:flutter/widgets.dart';
import 'package:flutter_ecommerce_app/core/services/services.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController{
  Locale? language;
  MyServices myServices=Get.find();

  changeLang(String langCode)
  {
  Locale locale=Locale(langCode);
  myServices.sharedPreferences.setString("lang", langCode);
  Get.updateLocale(locale);
  }
  @override
  void onInit() {
    if(myServices.sharedPreferences.getString("lang")=="ar"){
      language=const Locale("ar");
    }else if(myServices.sharedPreferences.getString("lang")=="en"){
      language=const Locale("en");
    }else{
      language=Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}