import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/controller/auth/verifycode_signup_controller.dart';
import 'package:flutter_ecommerce_app/view/widget/auth/custom_text_body.dart';
import 'package:flutter_ecommerce_app/view/widget/auth/custom_text_title.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../../../core/constant/color.dart';

class VerifyCodeSignUp extends StatelessWidget {
  const VerifyCodeSignUp({super.key});

  @override
  Widget build(BuildContext context) {
VerifyCodeSignUpControllerImp controller=Get.put(VerifyCodeSignUpControllerImp());
    return Scaffold(
       appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text(
          'verificationcode'.tr,
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: AppColor.grey),
        ),
      ),
      body: Container(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: ListView(children: [
                   CustomTitleText(text: "checkcode".tr),
                  const SizedBox(height: 10,),
                  CustomBodyText(text: "entercode".tr+" kawthar@gmail.com"),
                   OtpTextField(
            fieldWidth: 50,
            borderRadius: BorderRadius.circular(20),
            focusedBorderColor: AppColor.primaryColor,
            borderColor: AppColor.black,
            numberOfFields: 5,
            showFieldAsBox: true,
            onCodeChanged: (value) {
              
            },
            onSubmit: (String verificationCode) {
              controller.goTosuccesSignUp();
            },
          ),
         
                ]),

      ),
    );
  }
}