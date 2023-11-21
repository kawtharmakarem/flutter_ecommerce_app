import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/controller/onboarding_controller.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../../data/datasource/static/static.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImpl> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        itemCount: onBoardingList.length,
        onPageChanged: (value) {
          controller.onPageChanged(value);
        },
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.asset(
                onBoardingList[index].image!,
                width: 200,
                height: Get.width/1.5,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                height: 60,
              ),
              Center(
                  child: Text(
                onBoardingList[index].title!,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: AppColor.black),
              )),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  onBoardingList[index].body!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      height: 2,
                      color: AppColor.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              )
            ],
          );
        });
  }
}
