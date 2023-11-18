import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/constant/app_route.dart';
import 'package:get/get.dart';

abstract class CheckEmailController extends GetxController{
checkEmail();
goToSuccessSignUp();
}
class CheckEmailControllerImp extends CheckEmailController{
  late TextEditingController emailController;
  @override
  checkEmail() {
    
  }

  @override
  goToSuccessSignUp() {
   Get.offNamed(AppRoutes.successSignUp);
  }
  @override
  void onInit() {
    emailController=TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

}