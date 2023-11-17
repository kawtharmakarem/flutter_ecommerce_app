import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/constant/app_route.dart';
import 'package:flutter_ecommerce_app/view/screen/auth/forgot_password.dart';
import 'package:flutter_ecommerce_app/view/screen/auth/login.dart';
import 'package:flutter_ecommerce_app/view/screen/auth/reset_password.dart';
import 'package:flutter_ecommerce_app/view/screen/auth/signup.dart';
import 'package:flutter_ecommerce_app/view/screen/auth/success_resetpassword.dart';
import 'package:flutter_ecommerce_app/view/screen/auth/success_signup.dart';
import 'package:flutter_ecommerce_app/view/screen/auth/verify_code.dart';
import 'package:flutter_ecommerce_app/view/screen/on_boarding.dart';

Map<String, Widget Function(BuildContext)> routes={
  AppRoutes.login:(context)=>const Login(),
  AppRoutes.onBoarding:(context)=>const OnBoarding(),
  AppRoutes.signup:(context)=>const SignUp(),
  AppRoutes.forgotPassword:(context)=>const ForgotPassword(),
  AppRoutes.verifyCode:(context)=>const VerifyCode(),
  AppRoutes.resetPassword:(context)=>const ResetPassword(),
  AppRoutes.successResetPassword:(context)=>const SuccessResetPassword(),
  AppRoutes.successSignUp:(context)=>const SuccessSignUp()
};