import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class CustomButtonLang extends StatelessWidget {
  final String buttonText;
  final void Function() onPressed;
  const CustomButtonLang({super.key, required this.buttonText,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 10),
             width: double.infinity,
             child: MaterialButton(onPressed: onPressed,
             color: AppColor.primaryColor,
             textColor: Colors.white,
             child: Text(buttonText,style:const TextStyle(fontWeight: FontWeight.bold),),),              
            );
  }
}