import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/controller/auth/forgotpassword_controller.dart';
import 'package:flutter_ecommerce_app/core/functions/validate_input.dart';
import 'package:get/get.dart';

import '../../../../core/constant/color.dart';
import '../../../widget/auth/custom_button_auth.dart';
import '../../../widget/auth/custom_text_body.dart';
import '../../../widget/auth/custom_text_title.dart';
import '../../../widget/auth/custom_textformfield.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgotPasswordControllerImp controller =
        Get.put(ForgotPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text(
          'forgot'.tr,
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: AppColor.grey),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key:controller.forgotpasswordKey ,
          child: ListView(
            children: [
              CustomTitleText(text: "checkemail".tr),
              const SizedBox(
                height: 10,
              ),
               CustomBodyText(
                text:
                    "verifycode".tr,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                  myController: controller.emailTextEditigController,
                  valid: (val){
                    return validateInput(val!, 5, 100, "email");
                  },
                  hintText: "enteremail".tr,
                  labelText: "email".tr,
                  iconData: Icons.email_outlined),
              CustomButtonAuth(text: "check".tr, onPressed: () {
                controller.goToVerifyCode();
              }),
              
            ],
          ),
        ),
      ),
    );
  }
}
