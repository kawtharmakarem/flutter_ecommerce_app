import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class CustomTextSignUpOrSignIn extends StatelessWidget {
  final String text;
  final String buttonText;
  final void Function() onTap;
  const CustomTextSignUpOrSignIn({super.key, required this.text, required this.buttonText, required this.onTap});


  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text(text),
                InkWell(
                    onTap: onTap,
                    child: Text(
                      buttonText,
                      style:const TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            );
  }
}