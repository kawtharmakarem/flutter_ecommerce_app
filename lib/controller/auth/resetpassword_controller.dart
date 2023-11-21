import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/constant/app_route.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController{
  resetPassword();
  gotoSuccessResetPassword();

}
class ResetPasswordControllerImp extends ResetPasswordController{
  late TextEditingController passwordController;
  late TextEditingController rePasswordController;
  GlobalKey<FormState> resetpasswordKey=GlobalKey<FormState>();
  @override
  void onInit() {
    passwordController=TextEditingController();
    rePasswordController=TextEditingController();
    
    super.onInit();
  }
  @override
  void dispose() {
    passwordController.dispose();
    rePasswordController.dispose();
    super.dispose();
  }
  
  @override
  gotoSuccessResetPassword() {
    if(resetpasswordKey.currentState!.validate()){
          Get.offNamed(AppRoutes.successResetPassword);

    }else{
      print("Not Valid");
    }
  }
  
  @override
  resetPassword() {
   
  }
}