import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/constant/color.dart';
import 'package:flutter_ecommerce_app/core/localization/change_locale.dart';
import 'package:flutter_ecommerce_app/core/localization/translation.dart';
import 'package:flutter_ecommerce_app/core/services/services.dart';
import 'package:flutter_ecommerce_app/routes.dart';
import 'package:flutter_ecommerce_app/view/screen/auth/login.dart';
import 'package:flutter_ecommerce_app/view/screen/auth/signup.dart';
import 'package:flutter_ecommerce_app/view/screen/language.dart';
import 'package:flutter_ecommerce_app/view/screen/on_boarding.dart';
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
      theme: ThemeData(
        fontFamily: "PlayfairDisplay",
        textTheme:const TextTheme(
          headlineLarge:  TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: AppColor.black),
          headlineMedium: TextStyle(height: 2,color: AppColor.grey,fontWeight: FontWeight.bold,fontSize: 14),
          bodyMedium: TextStyle(height: 2,color: AppColor.grey,fontWeight: FontWeight.bold,fontSize: 14),

        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:const Language(),
      routes: routes,
    );
  }
}
