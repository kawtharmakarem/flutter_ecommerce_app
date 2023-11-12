import 'package:flutter/material.dart';

import '../../../core/constant/image_asset.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return  Image.asset(AppImageAsset.logo,height: 160,);

  }
}