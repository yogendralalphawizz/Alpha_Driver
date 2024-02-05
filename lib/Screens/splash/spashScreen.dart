import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work/utilities/app_color.dart';
import '../../utilities/mediaQuery.dart';
import 'controller/splashController.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  final SplashController controll =
      Get.put(SplashController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    precacheImage(const AssetImage("assets/images/iimage.png"), context);
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: appThemeColor,
      body: Image.asset(
        'assets/images/iimage.png',
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
