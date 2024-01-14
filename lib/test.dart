import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/constant/color.dart';
import 'package:flutter_ecommerce_app/core/functions/check_internet.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  var res;
  initialData() async{
    res=await checkInternet();
        print(res);

  }
  @override
  void initState() {
    initialData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TestPage"),),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          OtpTextField(
            
            fieldWidth: 50,
            borderRadius: BorderRadius.circular(20),
            focusedBorderColor: AppColor.primaryColor,
            borderColor: AppColor.black,
            numberOfFields: 5,
            showFieldAsBox: true,
            onCodeChanged: (value) {
              
            },
            onSubmit: (String verificationCode) {
              
            },
          )
        ],
      ),
    );
  }
}