import 'package:flutter_ecommerce_app/core/constant/app_route.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignUpController extends GetxController{
checkCode();
goTosuccesSignUp();

}
class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController{
  late String verifyCode;
  String? email;
  
  @override
  checkCode() {
    
  }
  
  @override
  goTosuccesSignUp() {
    Get.offNamed(AppRoutes.successSignUp);
  }
  @override
  void onInit() {

    Get.arguments['email'];
    super.onInit();
  }
}