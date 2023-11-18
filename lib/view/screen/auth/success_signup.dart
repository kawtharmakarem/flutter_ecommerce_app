import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/view/widget/auth/custom_button_auth.dart';

import '../../../core/constant/color.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text(
          'Success',
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: AppColor.grey),
        ),),
       body: Container(
        padding: const EdgeInsets.all(15),
        child:Column(
          children: [
          const  Center(child:  Icon(Icons.check_circle_outline,size: 150,color: AppColor.primaryColor,)),
            const Center(child: Text("Successfully SignUp")),
           const Spacer(),
            Container(
              width: double.infinity,
              child: CustomButtonAuth(text: "Go To Login", onPressed: (){
            
              }),
            ),
            const SizedBox(height: 40,)

        ],) ,),
    );
  }
}