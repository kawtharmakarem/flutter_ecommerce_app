import 'package:flutter_ecommerce_app/core/constant/app_route.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController{
checkCode();
goToResetPassword();
}
class VerifyCodeControllerImp extends VerifyCodeController{
  late String verifyCode;
  @override
  checkCode() {
    throw UnimplementedError();
  }

  @override
  goToResetPassword() {
    Get.offNamed(AppRoutes.resetPassword);
  }

}