import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/controller/test_controller.dart';
import 'package:flutter_ecommerce_app/core/class/status_request.dart';
import 'package:get/get.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      appBar: AppBar(title: Text('Title'),),
      body: GetBuilder<TestController>(builder: (controller){
        if(controller.statusRequest==StatusRequest.loading){
          return Center(child: Text("Loading"));
        }else if(controller.statusRequest==StatusRequest.offlinefailure){
          return Center(child: Text('Offline failure'));

        }else if(controller.statusRequest==StatusRequest.serverfailure){
          return Center(child: Text("Server Failure"),);
        }else{
          return ListView.builder(
            itemCount: controller.data.length,
            itemBuilder: (context,index){
              // return Text("${controller.data}");
              return Text('Im here');
            });
        }
      },),
    );
  }
}