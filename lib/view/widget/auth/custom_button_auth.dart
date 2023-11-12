import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/constant/color.dart';

class CustomButtonAuth extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  const CustomButtonAuth({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: MaterialButton(
        
        padding: const EdgeInsets.symmetric(vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        onPressed: onPressed,
        color: AppColor.primaryColor,
        textColor: AppColor.white,
        child: Text(text),
      ),
    );
  }
}