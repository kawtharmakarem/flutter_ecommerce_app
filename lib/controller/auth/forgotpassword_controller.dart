import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/constant/app_route.dart';
import 'package:get/get.dart';

abstract class ForgotPasswordController extends GetxController{
  checkEmail();
  goToVerifyCode();
}
class ForgotPasswordControllerImp extends ForgotPasswordController{
  late TextEditingController emailTextEditigController;
  @override
  goToVerifyCode() {
   Get.toNamed(AppRoutes.verifyCode); 
  }
  @override
  void onInit() {
    emailTextEditigController=TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    emailTextEditigController.dispose();
    super.dispose();
  }
  
  @override
  checkEmail() {
   
  }

}