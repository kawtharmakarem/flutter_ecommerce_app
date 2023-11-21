import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/constant/app_route.dart';
import 'package:get/get.dart';

abstract class ForgotPasswordController extends GetxController{
  checkEmail();
  goToVerifyCode();
}
class ForgotPasswordControllerImp extends ForgotPasswordController{
  late TextEditingController emailTextEditigController;
  GlobalKey<FormState> forgotpasswordKey=GlobalKey<FormState>();
  @override
  goToVerifyCode() {
    if(forgotpasswordKey.currentState!.validate()){
   Get.offNamed(AppRoutes.verifyCode); 

    }else{
      print("Not Valid");
    }
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