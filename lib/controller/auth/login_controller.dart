import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/constant/app_route.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController{
  login();
  goToForgotPassword();
  goToSignUp();
}
class LoginControllerImp extends LoginController{
  late TextEditingController emailController;
  late TextEditingController passwordController;
   GlobalKey<FormState> loginKey=GlobalKey<FormState>();
   bool isShowPassword=true;

   ShowPassword(){
    isShowPassword=!isShowPassword;
    update();
   }

  @override
  login() {
   if(loginKey.currentState!.validate()){
    print("Valid"); 
   }else{
    print("Not Valid");
   }
  }
  
  @override
  goToSignUp() {
    Get.offNamed(AppRoutes.signup);
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
  
  @override
  goToForgotPassword() {
    Get.toNamed(AppRoutes.forgotPassword);
  }

}