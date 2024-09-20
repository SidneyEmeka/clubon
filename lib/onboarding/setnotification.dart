import 'package:clubon/homepage.dart';
import 'package:clubon/onboarding/signinmethod.dart';
import 'package:clubon/utils/reusables/glassmorph.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/styles/stylings.dart';

class Setnotification extends StatelessWidget {
  const Setnotification({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            height: size.height,
            width: size.width,
            child: Image.asset("${Stylings.imgPath}/setnotification.png", fit: BoxFit.cover,),
          ),
          Positioned(
            top: 50,
            left: 10,
            child: GestureDetector(
              onTap: () {
                Get.to(()=>Signinmethod());
              },
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
          Container(
            height: size.height*0.37,
            width: size.width,
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: Glassmorph(blur: 20, opacity: 0.2, child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Expanded(flex:2,child: SizedBox()),
                Text(
                  "Choose Your Notification",
                  style: Stylings.titles.copyWith(fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Text(
                      textAlign: TextAlign.center,
                      "Select what you want to be notified on",
                      style: Stylings.titles.copyWith(fontSize: 10)),
                ),
                const Expanded(flex:1,child: SizedBox()),
                GestureDetector(
                  onTap: () {
                    Get.offAll(()=>const Homepage());
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
                    alignment: Alignment.center,
                    width: size.width,
                    height: Get.height*0.065,
                    decoration: BoxDecoration(
                        color: Stylings.orange,
                        borderRadius: BorderRadius.circular(8)),
                    child: Text("Everything", style: Stylings.titles.copyWith(fontSize: 12,color: Colors.white),),

                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.offAll(()=>const Homepage());
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    alignment: Alignment.center,
                    width: size.width,
                    height: Get.height*0.065,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Text("Just My Event", style: Stylings.titles.copyWith(fontSize: 12),),

                  ),
                ),
                const Expanded(flex:2,child: SizedBox()),
              ],
            ),)
          )
        ],
      ),
    );
  }
}
