import 'package:flutter_ecommerce_app/core/class/crud.dart';
import 'package:flutter_ecommerce_app/linkapi.dart';

class SignupData{
  Crud crud;
  SignupData(this.crud);
postData(String username,String email,String phone,String password) async{
    var response=await crud.postData(AppLink.signUp, {
      'username':username,
      'email':email,
      'phone':phone,
      'password':password,
      
    });
    return response.fold((l) => l, (r) => r);
  }
}