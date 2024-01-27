import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/class/status_request.dart';
import 'package:flutter_ecommerce_app/core/constant/app_route.dart';
import 'package:flutter_ecommerce_app/core/functions/handlingdata_controller.dart';
import 'package:flutter_ecommerce_app/data/datasource/remote/auth/signup.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signup();
  goToSingIn();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  late TextEditingController usernameController;
  late TextEditingController emailController;
  late TextEditingController phoneController;
  late TextEditingController passwordController;
  StatusRequest? statusRequest;
  List data = [];
  SignupData signupData = SignupData(Get.find());
  @override
  signup() async {
    if (formState.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await signupData.postData(usernameController.text,
          emailController.text, phoneController.text, passwordController.text);
          statusRequest=handlingData(response);
          if(StatusRequest.success==statusRequest){
            if(response['status']=='success'){
              //data.addAll(response['data']);
               Get.offNamed(AppRoutes.verifyCodeSignUp,arguments: {
                'email':emailController.text
               });

            }else{
              Get.defaultDialog(title: "Warning",middleText: "Phone Number Or Email  Already Exists");
              statusRequest=StatusRequest.failure;
            }
          }

    } else {
      print("Not Valid");
    }
  }

  @override
  goToSingIn() {
    Get.offNamed(AppRoutes.login);
  }

  @override
  void onInit() {
    usernameController = TextEditingController();
    emailController = TextEditingController();
    phoneController = TextEditingController();
    passwordController = TextEditingController();
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
