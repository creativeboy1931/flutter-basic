import 'package:basic/core/constants/string_constant.dart';
import 'package:basic/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FlashScreen extends StatefulWidget {
  const FlashScreen({super.key});

  @override
  State<FlashScreen> createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed(AppRoutes.home);
      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NextScreen()));
    });
  }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child: Text(
            StringConstant.welcomeText,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      );
    }

}

