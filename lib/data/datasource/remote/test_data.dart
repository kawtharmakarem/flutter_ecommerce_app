import 'package:flutter_ecommerce_app/core/class/crud.dart';
import 'package:flutter_ecommerce_app/linkapi.dart';

class TestData{
  Crud crud;
  TestData(this.crud);
  getData() async{
    var response=await crud.postData(AppLink.test, {});
   return response.fold((l) => l, (r) => r);
  }
}