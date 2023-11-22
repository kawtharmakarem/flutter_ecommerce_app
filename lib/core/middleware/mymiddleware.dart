import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/constant/app_route.dart';
import 'package:flutter_ecommerce_app/core/services/services.dart';
import 'package:get/get.dart';

class MyMiddleWare extends GetMiddleware{
   MyServices myServices=Get.find();

    int? get priority => 1;

    RouteSettings? redirect(String? route){
     if(myServices.sharedPreferences.getString("onboarding")=="1"){
      return const RouteSettings(name: AppRoutes.login);
     } 
    }


}