import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/controller/test_controller.dart';
import 'package:flutter_ecommerce_app/core/class/handlingdata_view.dart';
import 'package:flutter_ecommerce_app/core/class/status_request.dart';
import 'package:flutter_ecommerce_app/core/constant/color.dart';
import 'package:get/get.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
        appBar: AppBar(
          title: Text('Title'),
          backgroundColor: AppColor.primaryColor,
        ),
        body: GetBuilder<TestController>(builder: (controller) {
          return HandlingDataview(
              statusRequest: controller.statusRequest,
              widget: ListView.builder(
                  itemCount: controller.data.length,
                  itemBuilder: (context, index) {
                    return Text("${controller.data}");
                  }));
        }));
  }
}
