import 'package:flutter/widgets.dart';
import 'package:flutter_ecommerce_app/core/constant/app_route.dart';
import 'package:flutter_ecommerce_app/data/datasource/static/static.dart';
import 'package:flutter_ecommerce_app/view/screen/auth/login.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController{
  next();
  onPageChanged(int index);

}

class OnBoardingControllerImpl extends OnBoardingController{
  late PageController pageController;
  int currentPage=0;

  @override
  void onInit() {
    pageController=PageController();
    super.onInit();
  }
  @override
  next() {
    currentPage++;
    if(currentPage>onBoardingList.length-1){
      Get.offAllNamed(AppRoutes.login);
    }
   pageController.animateToPage(currentPage,duration:const Duration(milliseconds: 900), curve: Curves.easeInOut);
  }

  @override
  onPageChanged(int index) {
    currentPage=index;
    update();
  }

}