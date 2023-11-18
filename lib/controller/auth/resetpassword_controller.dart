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
    Get.offNamed(AppRoutes.successResetPassword);
  }
  
  @override
  resetPassword() {
    // TODO: implement resetPassword
    throw UnimplementedError();
  }
}