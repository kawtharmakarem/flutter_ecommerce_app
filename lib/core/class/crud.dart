import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_ecommerce_app/core/class/status_request.dart';
import 'package:flutter_ecommerce_app/core/functions/check_internet.dart';
import 'package:http/http.dart' as http;

class Crud{
  Future<Either<StatusRequest,Map>> postData(String linkUrl,Map data) async
  {
    try
    {
      if(await checkInternet()){
      var response=await http.post(Uri.parse(linkUrl),body: data);
      if(response.statusCode==200 || response.statusCode==201)
      {
         Map responsebody=jsonDecode(response.body);
         print(responsebody);
         return Right(responsebody);

      }else{
        return const Left(StatusRequest.serverfailure);
      }

    }else{
      return const Left(StatusRequest.offlinefailure);
    }
    
    }catch(_){
      return const Left(StatusRequest.serverException);
    }
  }
}