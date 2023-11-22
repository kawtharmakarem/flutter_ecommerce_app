import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/controller/auth/resetpassword_controller.dart';
import 'package:flutter_ecommerce_app/core/functions/validate_input.dart';
import 'package:flutter_ecommerce_app/view/widget/auth/custom_button_auth.dart';
import 'package:flutter_ecommerce_app/view/widget/auth/custom_text_body.dart';
import 'package:flutter_ecommerce_app/view/widget/auth/custom_text_title.dart';
import 'package:flutter_ecommerce_app/view/widget/auth/custom_textformfield.dart';
import 'package:get/get.dart';

import '../../../../core/constant/color.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp resetController =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text(
          'reset'.tr,
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: AppColor.grey),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key:resetController.resetpasswordKey ,
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
               CustomTitleText(text: "newpassword".tr),
              const SizedBox(
                height: 10,
              ),
               CustomBodyText(text: "enternewpassword".tr),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                isNumber: false,
                obscureText: true,
                  hintText: "enterpassword".tr,
                  labelText: "password".tr,
                  iconData: Icons.lock_clock,
                  myController: resetController.passwordController,
                  valid: (val){
                    return validateInput(val!, 8, 30, "password");
                  },),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                obscureText: true,
                isNumber:false ,
                valid: (val){
                  return validateInput(val!, 8, 30, "password");
                },
                  hintText: "reenterpassword".tr,
                  labelText: "repassword".tr,
                  iconData: Icons.lock_clock_outlined,
                  myController: resetController.rePasswordController),
              const SizedBox(
                height: 40,
              ),
                          CustomButtonAuth(text: "save".tr, onPressed: () {
                            resetController.gotoSuccessResetPassword();
                          }),
        
            ],
          ),
        ),
      ),
    );
  }
}
