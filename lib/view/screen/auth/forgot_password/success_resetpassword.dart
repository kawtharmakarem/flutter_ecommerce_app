import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/controller/auth/success_resetpassword_controller.dart';
import 'package:get/get.dart';

import '../../../../core/constant/color.dart';
import '../../../widget/auth/custom_button_auth.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImp controller=Get.put(SuccessResetPasswordControllerImp());
    return Scaffold(
       appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text(
          'successresetpassword'.tr,
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: AppColor.grey),
        ),
      ),
     body: Container(
        padding: const EdgeInsets.all(15),
        child:Column(
          children: [
          const  Center(child:  Icon(Icons.check_circle_outline,size: 150,color: AppColor.primaryColor,)),
            Center(child: Text("successfullyreset".tr)),
           const Spacer(),
            Container(
              width: double.infinity,
              child: CustomButtonAuth(text: "gotologin".tr, onPressed: (){
                 controller.goToLoginPage();
              }),
            ),
            const SizedBox(height: 40,)

        ],) ,),
    );
  }
}