import 'package:flutter_ecommerce_app/controller/auth/signup_controller.dart';
import 'package:flutter_ecommerce_app/core/class/crud.dart';
import 'package:get/get.dart';

class MyBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(Crud());
        Get.lazyPut(()=> SignUpControllerImp(),fenix: true);

  }
  

}