import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/controller/auth/verifycode_controller.dart';
import 'package:flutter_ecommerce_app/view/widget/auth/custom_text_body.dart';
import 'package:flutter_ecommerce_app/view/widget/auth/custom_text_title.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../../../core/constant/color.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
      VerifyCodeControllerImp verifyController=Get.put(VerifyCodeControllerImp());

    return Scaffold(
       appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text(
          'Verification Code',
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: AppColor.grey),
        ),
      ),
      body: Container(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: ListView(children: [
                  const CustomTitleText(text: "Check Code"),
                  const SizedBox(height: 10,),
                  const CustomBodyText(text: "Please Enter The Digit Code Sent To kawthar@gmail.com"),
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
              verifyController.goToResetPassword();
            },
          ),
         
                ]),

      ),
    );
  }
}