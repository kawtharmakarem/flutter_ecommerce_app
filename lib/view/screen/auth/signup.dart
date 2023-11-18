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
          'register'.tr,
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
             CustomTitleText(text: "welcome".tr),
            const SizedBox(
              height: 10,
            ),
       CustomBodyText(
              text:
                  "signup".tr,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextFormField(
                myController: controller.usernameController,
                hintText: "entername".tr,
                labelText: "username".tr,
                iconData: Icons.person_2_outlined),
            CustomTextFormField(
                myController: controller.emailController,
                hintText: "enteremail".tr,
                labelText: "email".tr,
                iconData: Icons.email_outlined),
            CustomTextFormField(
                myController: controller.phoneController,
                hintText: "enterphone".tr,
                labelText: "phone".tr,
                iconData: Icons.phone_android_outlined),
            CustomTextFormField(
                myController: controller.passwordController,
                hintText: "enterpassword".tr,
                labelText: "password".tr,
                iconData: Icons.lock_clock_outlined),
            
            CustomButtonAuth(text: "register".tr, onPressed: () {
              controller.sigup();
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
                    child:  Text(
                      "login".tr,
                      style:const TextStyle(
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
