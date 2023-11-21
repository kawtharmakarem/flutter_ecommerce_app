import 'package:flutter_ecommerce_app/core/constant/app_route.dart';
import 'package:get/get.dart';

abstract  class SuccessResetPasswordController extends GetxController{
 goToLoginPage();
}
class SuccessResetPasswordControllerImp extends SuccessResetPasswordController{
  @override
  goToLoginPage() {
    Get.offAllNamed(AppRoutes.login);
  }

}