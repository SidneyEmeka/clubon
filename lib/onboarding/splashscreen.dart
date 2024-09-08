
import 'package:clubon/onboarding/signinmethod.dart';
import 'package:clubon/utils/styles/stylings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Get.to(Signinmethod(),);
     });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Stylings.orange,
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: Image.asset("assets/images/Logo.png"),
          ),
          Text(
            "Clubon",
            style: Stylings.titles.copyWith(color: Colors.white, fontSize: 18),
          )
        ],
      )),
    );
  }
}
