import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/constant/app_route.dart';
import 'package:flutter_ecommerce_app/view/screen/auth/login.dart';
import 'package:flutter_ecommerce_app/view/screen/on_boarding.dart';

Map<String, Widget Function(BuildContext)> routes={
  AppRoutes.login:(context)=>const Login(),
  AppRoutes.onBoarding:(context)=>const OnBoarding()
};