import 'package:flutter/material.dart';

import '../../../../core/constant/color.dart';
import '../../../widget/auth/custom_button_auth.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text(
          'SuccessResetPassword',
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
            const Center(child: Text("Successfully ResetPassword")),
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