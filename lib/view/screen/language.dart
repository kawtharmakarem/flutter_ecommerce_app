import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/constant/app_route.dart';
import 'package:flutter_ecommerce_app/core/localization/change_locale.dart';
import 'package:flutter_ecommerce_app/view/widget/language/custom_button_lang.dart';
import 'package:get/get.dart';

class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:const EdgeInsets.all(10),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("chooseLang".tr,style: Theme.of(context).textTheme.headlineLarge),
            CustomButtonLang(buttonText: "ar".tr,onPressed: (){
              controller.changeLang("ar");
              Get.toNamed(AppRoutes.onBoarding);
            },),

            CustomButtonLang(buttonText: "en".tr,onPressed: (){
              controller.changeLang("en");
              Get.toNamed(AppRoutes.onBoarding);
            },)

        ],),
      ),
    );
  }
}