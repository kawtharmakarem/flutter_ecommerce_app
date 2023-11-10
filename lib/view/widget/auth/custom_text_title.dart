import 'package:flutter/material.dart';

class CustomTitleText extends StatelessWidget {
  final String text;
  const CustomTitleText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Text(
              text,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineLarge,
            );
  }
}