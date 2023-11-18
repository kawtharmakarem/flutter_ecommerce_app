import 'package:flutter_ecommerce_app/core/constant/image_asset.dart';
import 'package:flutter_ecommerce_app/data/model/onboarding_model.dart';
import 'package:get/get.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
      title: "boardingTitle1".tr,
      image: AppImageAsset.onBoardingImageOne,
      body:
          "boarding1".tr),
  OnBoardingModel(
      title: "boardingTitle2".tr,
      image: AppImageAsset.onBoardingImageTwo,
      body:
          "boarding2".tr),
  OnBoardingModel(
      title: "boardingTitle3".tr,
      image: AppImageAsset.onBoardingImageThree,
      body:
          "boarding3".tr),
 
];
