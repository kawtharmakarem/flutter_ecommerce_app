import 'package:flutter_ecommerce_app/core/constant/image_asset.dart';
import 'package:flutter_ecommerce_app/data/model/onboarding_model.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
      title: "Choose Product",
      image: ImageAsset.onBoardingImageOne,
      body:
          "We Have a 100k+products.Choose \n Your product from our E-\ncommerce shop."),
  OnBoardingModel(
      title: "Esay & Safe Payment",
      image: ImageAsset.onBoardingImageTwo,
      body:
          "Easy Checkout & Safe Payment \n method. Trusted by out Customers \n from all over the world"),
  OnBoardingModel(
      title: "Track Your Order",
      image: ImageAsset.onBoardingImageThree,
      body:
          "Best Tracker has been Used For \n Track your order.You'll know where \n your product is at the moment"),
  OnBoardingModel(
      title: "Fast Delivery",
      image: ImageAsset.onBoardingImageFour,
      body:
          "Reliable And Fast Delviery. We\n Deliver your product the fastest \n way possible")
];
