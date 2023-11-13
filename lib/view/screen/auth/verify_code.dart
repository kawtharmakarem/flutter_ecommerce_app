import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/view/widget/auth/custom_text_body.dart';
import 'package:flutter_ecommerce_app/view/widget/auth/custom_text_title.dart';

import '../../../core/constant/color.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text(
          'Verification Code',
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: AppColor.grey),
        ),
      ),
      body: Container(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: ListView(children: [
                  const CustomTitleText(text: "Check Code"),
                  const SizedBox(height: 10,),
                  const CustomBodyText(text: "Please Enter The Digit Code Sent To kawthar@gmail.com")
                ]),

      ),
    );
  }
}