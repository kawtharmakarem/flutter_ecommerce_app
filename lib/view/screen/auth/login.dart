import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/constant/color.dart';
import 'package:flutter_ecommerce_app/core/constant/image_asset.dart';
import 'package:flutter_ecommerce_app/view/widget/auth/custom_text_body.dart';
import 'package:flutter_ecommerce_app/view/widget/auth/custom_text_title.dart';
import 'package:flutter_ecommerce_app/view/widget/auth/custom_textformfield.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
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
            Image.asset(AppImageAsset.authLogo),
            const SizedBox(
              height: 20,
            ),
         const  CustomTitleText(text: "Welcome Back"),
            const SizedBox(
              height: 10,
            ),
            
            const CustomBodyText(text: "Sign In With Email And Password Or Continue With Social Media"),
            const SizedBox(
              height: 65,
            ),
            const CustomTextFormField(
                hintText: "Enter Your Email",
                labelText: "Email",
                iconData: Icons.email_outlined),
            const CustomTextFormField(
                hintText: "Enter Your Password",
                labelText: "Password",
                iconData: Icons.lock_clock_outlined)
          ],
        ),
      ),
    );
  }
}
