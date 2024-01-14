import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/constant/app_route.dart';
import 'package:flutter_ecommerce_app/core/middleware/mymiddleware.dart';
import 'package:flutter_ecommerce_app/test.dart';
import 'package:flutter_ecommerce_app/view/screen/auth/forgot_password/forgot_password.dart';
import 'package:flutter_ecommerce_app/view/screen/auth/login.dart';
import 'package:flutter_ecommerce_app/view/screen/auth/forgot_password/reset_password.dart';
import 'package:flutter_ecommerce_app/view/screen/auth/signup.dart';
import 'package:flutter_ecommerce_app/view/screen/auth/forgot_password/success_resetpassword.dart';
import 'package:flutter_ecommerce_app/view/screen/auth/success_signup.dart';
import 'package:flutter_ecommerce_app/view/screen/auth/forgot_password/verify_code.dart';
import 'package:flutter_ecommerce_app/view/screen/auth/verifycode_signup.dart';
import 'package:flutter_ecommerce_app/view/screen/language.dart';
import 'package:flutter_ecommerce_app/view/screen/on_boarding.dart';
import 'package:flutter_ecommerce_app/view/test_view.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes=[

        GetPage(name: "/", page: ()=>const TestView()),


  // GetPage(name: "/", page: ()=>const Language(),middlewares: [
  //   MyMiddleWare()
  // ]),
    GetPage(name:  AppRoutes.onBoarding, page: ()=>const OnBoarding()),
        GetPage(name: AppRoutes.login, page: ()=>const Login()),

      GetPage(name: AppRoutes.signup, page: ()=>const SignUp()),
  GetPage(name: AppRoutes.forgotPassword, page: ()=>const ForgotPassword()),
  GetPage(name: AppRoutes.verifyCode, page: ()=>const VerifyCode()),
  GetPage(name: AppRoutes.resetPassword, page: ()=>const ResetPassword()),
  GetPage(name: AppRoutes.successResetPassword, page: ()=>const SuccessResetPassword()),
  GetPage(name: AppRoutes.successSignUp, page: ()=>const SuccessSignUp()),
  GetPage(name: AppRoutes.verifyCodeSignUp, page: ()=>const VerifyCodeSignUp()), 
];