import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/controller/auth/resetpassword_controller.dart';
import 'package:flutter_ecommerce_app/view/widget/auth/custom_button_auth.dart';
import 'package:flutter_ecommerce_app/view/widget/auth/custom_text_body.dart';
import 'package:flutter_ecommerce_app/view/widget/auth/custom_text_title.dart';
import 'package:flutter_ecommerce_app/view/widget/auth/custom_textformfield.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';

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
          'Reset Password',
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
            const SizedBox(
              height: 20,
            ),
            const CustomTitleText(text: "New Password"),
            const SizedBox(
              height: 10,
            ),
            const CustomBodyText(text: "Please enter your New Password"),
            const SizedBox(
              height: 15,
            ),
            CustomTextFormField(
                hintText: "Enter NewPassword",
                labelText: "NewPassword",
                iconData: Icons.lock_clock,
                myController: resetController.passwordController),
            const SizedBox(
              height: 15,
            ),
            CustomTextFormField(
                hintText: "ReEnter Passsword",
                labelText: "RePassword",
                iconData: Icons.lock_clock_outlined,
                myController: resetController.rePasswordController),
            const SizedBox(
              height: 40,
            ),
                        CustomButtonAuth(text: "Save", onPressed: () {
                          resetController.gotoSuccess();
                        }),

          ],
        ),
      ),
    );
  }
}
