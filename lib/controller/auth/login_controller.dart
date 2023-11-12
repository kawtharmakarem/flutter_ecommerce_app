import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/constant/app_route.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController{
  login();
  goToSignUp();
}
class LoginControllerImp extends LoginController{
  late TextEditingController emailController;
  late TextEditingController passwordController;
  @override
  login() {
   
  }
  
  @override
  goToSignUp() {
    Get.toNamed(AppRoutes.signup);
  }
  @override
  void onInit() {
    emailController=TextEditingController();
    passwordController=TextEditingController();
    super.onInit();

  }
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

}