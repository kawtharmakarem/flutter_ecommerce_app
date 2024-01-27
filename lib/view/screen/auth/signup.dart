import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/controller/auth/signup_controller.dart';
import 'package:flutter_ecommerce_app/core/class/status_request.dart';
import 'package:flutter_ecommerce_app/core/functions/alert_exit.dart';
import 'package:flutter_ecommerce_app/core/functions/validate_input.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../widget/auth/custom_button_auth.dart';
import '../../widget/auth/custom_text_body.dart';
import '../../widget/auth/custom_text_title.dart';
import '../../widget/auth/custom_textformfield.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.backgroundcolor,
          elevation: 0.0,
          title: Text(
            'register'.tr,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: AppColor.grey),
          ),
        ),
        body: WillPopScope(
          onWillPop: alertExitApp,
          child: GetBuilder<SignUpControllerImp>(
            builder: (controller) => controller.statusRequest ==
                    StatusRequest.loading
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30),
                    child: Form(
                      key: controller.formState,
                      child: ListView(
                        children: [
                          CustomTitleText(text: "welcome".tr),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomBodyText(
                            text: "signup".tr,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomTextFormField(
                              isNumber: false,
                              myController: controller.usernameController,
                              valid: (val) {
                                return validateInput(val!, 3, 100, "username");
                              },
                              hintText: "entername".tr,
                              labelText: "username".tr,
                              iconData: Icons.person_2_outlined),
                          CustomTextFormField(
                              isNumber: false,
                              myController: controller.emailController,
                              valid: (val) {
                                return validateInput(val!, 5, 100, "email");
                              },
                              hintText: "enteremail".tr,
                              labelText: "email".tr,
                              iconData: Icons.email_outlined),
                          CustomTextFormField(
                              isNumber: true,
                              myController: controller.phoneController,
                              valid: (val) {
                                return validateInput(val!, 6, 20, "phone");
                              },
                              hintText: "enterphone".tr,
                              labelText: "phone".tr,
                              iconData: Icons.phone_android_outlined),
                          CustomTextFormField(
                              isNumber: false,
                              myController: controller.passwordController,
                              obscureText: true,
                              valid: (val) {
                                return validateInput(val!, 3, 30, "password");
                              },
                              hintText: "enterpassword".tr,
                              labelText: "password".tr,
                              iconData: Icons.lock_clock_outlined),
                          CustomButtonAuth(
                              text: "register".tr,
                              onPressed: () {
                                controller.signup();
                              }),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("dohaveaccount".tr),
                              InkWell(
                                  onTap: () {
                                    controller.goToSingIn();
                                  },
                                  child: Text(
                                    "login".tr,
                                    style: const TextStyle(
                                        color: AppColor.primaryColor,
                                        fontWeight: FontWeight.bold),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
          ),
        ));
  }
}
