import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/controller/onboarding_controller.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImpl> {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                height: 40,
                margin: const EdgeInsets.only(bottom: 30),
                child: MaterialButton(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  onPressed: () {
                    controller.next();
                  },
                  color: AppColor.primaryColor,
                  textColor: AppColor.white,
                  child: Text('continue'.tr),
                ),
              );
  }
}