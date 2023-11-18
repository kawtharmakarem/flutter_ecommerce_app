import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/controller/auth/login_controller.dart';
import 'package:flutter_ecommerce_app/core/constant/color.dart';
import 'package:flutter_ecommerce_app/view/widget/auth/custom_button_auth.dart';
import 'package:flutter_ecommerce_app/view/widget/auth/custom_text_body.dart';
import 'package:flutter_ecommerce_app/view/widget/auth/custom_text_title.dart';
import 'package:flutter_ecommerce_app/view/widget/auth/custom_textformfield.dart';
import 'package:flutter_ecommerce_app/view/widget/auth/logo_auth.dart';
import 'package:flutter_ecommerce_app/view/widget/auth/text_signup.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller=Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text(
          'login'.tr,
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: AppColor.grey),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: ListView(
          children: [
            LogoAuth(),
            const SizedBox(
              height: 5,
            ),
            CustomTitleText(text: "welcome".tr),
            const SizedBox(
              height: 15,
            ),
             CustomBodyText(
              text:
                  "signin".tr,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextFormField(
              myController: controller.emailController,
                hintText: "enteremail".tr,
                labelText: "email".tr,
                iconData: Icons.email_outlined),
             CustomTextFormField(
              myController: controller.passwordController,
                hintText: "enterpassword".tr,
                labelText: "password".tr,
                iconData: Icons.lock_clock_outlined),
            InkWell(
              onTap: () {
                controller.goToForgotPassword();
              },
              child:  Text(
                "forgotpassword".tr,
                textAlign: TextAlign.end,
              ),
            ),
            CustomButtonAuth(text: "login".tr, onPressed: () {}),
            // const SizedBox(
            //   height: 5,
            // ),
            CustomTextSignUpOrSignIn(text: "haveaccount".tr,buttonText: "register".tr,onTap: () {
              controller.goToSignUp();
            },)
          ],
        ),
      ),
    );
  }
}
