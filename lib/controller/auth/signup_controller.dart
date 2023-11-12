import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/constant/app_route.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController{
sigup();
goToSingIn();
}
class SignUpControllerImp extends SignUpController{
  late TextEditingController usernameController;
  late TextEditingController emailController;
  late TextEditingController phoneController;
  late TextEditingController passwordController;
  @override
  sigup() {
   
  }

  @override
  goToSingIn() {
   Get.offNamed(AppRoutes.login);
  }
  @override
  void onInit() {
    usernameController=TextEditingController();
    emailController=TextEditingController();
    phoneController=TextEditingController();
    passwordController=TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }

}