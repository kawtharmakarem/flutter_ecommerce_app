import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/class/status_request.dart';
import 'package:flutter_ecommerce_app/core/constant/image_asset.dart';
import 'package:lottie/lottie.dart';

class HandlingDataview extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataview({super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return
     statusRequest==StatusRequest.loading ?
    Center(child: Lottie.asset(AppImageAsset.loading,width: 250,height: 250)):
    statusRequest==StatusRequest.offlinefailure?
     Center(child: Lottie.asset(AppImageAsset.offline,width: 250,height: 250)):
    statusRequest==StatusRequest.serverfailure?
    Center(child: Lottie.asset(AppImageAsset.server,width: 250,height: 250)):
    statusRequest==StatusRequest.failure?
     Center(child: Lottie.asset(AppImageAsset.noData,width: 250,height: 250,repeat: true)):widget;
  }
}