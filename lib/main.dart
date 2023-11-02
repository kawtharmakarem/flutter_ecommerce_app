import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/constant/color.dart';
import 'package:flutter_ecommerce_app/routes.dart';
import 'package:flutter_ecommerce_app/view/screen/on_boarding.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "PlayfairDisplay",
        textTheme:const TextTheme(
          headlineLarge:  TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: AppColor.black),
          headlineMedium: TextStyle(height: 2,color: AppColor.grey,fontWeight: FontWeight.bold,fontSize: 17)
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:const OnBoarding(),
      routes: routes,
    );
  }
}
