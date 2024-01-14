import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/binding.dart';
import 'package:flutter_ecommerce_app/core/localization/change_locale.dart';
import 'package:flutter_ecommerce_app/core/localization/translation.dart';
import 'package:flutter_ecommerce_app/core/services/services.dart';
import 'package:flutter_ecommerce_app/routes.dart';
import 'package:flutter_ecommerce_app/view/screen/language.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController localeController=Get.put(LocaleController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: localeController.language,
      translations: MyTranslation(),
      theme: localeController.appTheme,

      initialBinding: MyBinding(),
           // home:const Test(),

      getPages: routes,
    );
  }
}


//https://ecommerce2023.infinityfreeapp.com//