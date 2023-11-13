import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/controller/auth/login_controller.dart';
import 'package:flutter_ecommerce_app/core/constant/app_route.dart';
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
          'Sign In',
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: AppColor.grey),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children: [
            LogoAuth(),
            const SizedBox(
              height: 10,
            ),
            const CustomTitleText(text: "Welcome Back"),
            const SizedBox(
              height: 10,
            ),
            const CustomBodyText(
              text:
                  "Sign In With Email And Password Or Continue With Social Media",
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextFormField(
              myController: controller.emailController,
                hintText: "Enter Your Email",
                labelText: "Email",
                iconData: Icons.email_outlined),
             CustomTextFormField(
              myController: controller.passwordController,
                hintText: "Enter Your Password",
                labelText: "Password",
                iconData: Icons.lock_clock_outlined),
            InkWell(
              onTap: () {
                controller.goToForgotPassword();
              },
              child: const Text(
                "Forgot Password",
                textAlign: TextAlign.end,
              ),
            ),
            CustomButtonAuth(text: "Sign In", onPressed: () {}),
            const SizedBox(
              height: 5,
            ),
            CustomTextSignUpOrSignIn(text: "Don't have an account ? ",buttonText: "SignUp",onTap: () {
              controller.goToSignUp();
            },)
          ],
        ),
      ),
    );
  }
}
