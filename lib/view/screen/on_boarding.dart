import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/controller/onboarding_controller.dart';
import 'package:flutter_ecommerce_app/core/constant/color.dart';
import 'package:flutter_ecommerce_app/data/datasource/static/static.dart';
import 'package:flutter_ecommerce_app/view/widget/onboarding/custom_button.dart';
import 'package:flutter_ecommerce_app/view/widget/onboarding/custom_slider.dart';
import 'package:flutter_ecommerce_app/view/widget/onboarding/dot_controller.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImpl());
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: CustomSliderOnBoarding()
          ),
            Expanded(
              child:  Column(
            children: [
              CustomDotControllerOnBoarding(),
              Spacer(
                flex: 2,
              ),
              CustomButtonOnBoarding()
            ],
          ))
        ],
      ),
    ));
  }
}
