import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_ecommerce_app/controller/auth/signup_controller.dart';
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
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text(
          'Sign Up',
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
            const CustomTitleText(text: "Welcome Back"),
            const SizedBox(
              height: 10,
            ),
            const CustomBodyText(
              text:
                  "Sign Up With Email And Password Or Continue With Social Media",
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextFormField(
                myController: controller.usernameController,
                hintText: "Enter Your Name",
                labelText: "UserName",
                iconData: Icons.person_2_outlined),
            CustomTextFormField(
                myController: controller.emailController,
                hintText: "Enter Your Email",
                labelText: "Email",
                iconData: Icons.email_outlined),
            CustomTextFormField(
                myController: controller.phoneController,
                hintText: "Enter Phone",
                labelText: "Phone",
                iconData: Icons.phone_android_outlined),
            CustomTextFormField(
                myController: controller.passwordController,
                hintText: "Enter Your Password",
                labelText: "Password",
                iconData: Icons.lock_clock_outlined),
            const Text(
              "Forgot Password",
              textAlign: TextAlign.end,
            ),
            CustomButtonAuth(text: "Sign Up", onPressed: () {}),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Do You have an account ? "),
                InkWell(
                    onTap: () {
                      controller.goToSingIn();
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            )
          ],
        ),
      ),
    );
    ;
  }
}
