import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/controller/auth/checkemail_controller.dart';
import 'package:flutter_ecommerce_app/view/widget/auth/custom_button_auth.dart';
import 'package:flutter_ecommerce_app/view/widget/auth/custom_text_body.dart';
import 'package:flutter_ecommerce_app/view/widget/auth/custom_text_title.dart';
import 'package:flutter_ecommerce_app/view/widget/auth/custom_textformfield.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({super.key});

  @override
  Widget build(BuildContext context) {
    CheckEmailControllerImp controller = Get.put(CheckEmailControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text(
          'Check Email',
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
            const CustomTitleText(text: "Success SignUp"),
            const SizedBox(
              height: 20,
            ),
            const CustomBodyText(text: "Enter You Email ..."),
            const SizedBox(
              height: 10,
            ),
            CustomTextFormField(
                hintText: "Enter Email",
                labelText: "Email",
                iconData: Icons.email,
                myController: controller.emailController),
                CustomButtonAuth(text: "Check", onPressed:(){
                  controller.goToSuccessSignUp();
                })
          ],
        ),
      ),
    );
  }
}
