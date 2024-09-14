import 'package:clubon/homepage.dart';
import 'package:clubon/onboarding/signinmethod.dart';
import 'package:clubon/utils/reusables/glassmorph.dart';
import 'package:flutter/material.dart';

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
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return const Signinmethod();
                }));
              },
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 25,
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
                const SizedBox(height: 40,),
                Text(
                  "Choose Your Notification",
                  style: Stylings.titles.copyWith(fontSize: 27, fontWeight: FontWeight.w900),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Text(
                      textAlign: TextAlign.center,
                      "Select what you want to be notified on",
                      style: Stylings.subTitles.copyWith(fontSize: 14)),
                ),
                //   const Expanded(child: SizedBox()),
                Expanded(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_){
                          return const Homepage();
                        }));
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
                        alignment: Alignment.center,
                        width: size.width,
                        height: 55,
                        decoration: BoxDecoration(
                            color: Stylings.orange,
                            borderRadius: BorderRadius.circular(8)),
                        child: Text("Everything", style: Stylings.body.copyWith(fontSize: 13,fontWeight: FontWeight.w600,color: Colors.white),),

                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20.0),
                        alignment: Alignment.center,
                        width: size.width,
                        height: 55,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Text("Just My Event", style: Stylings.body.copyWith(fontSize: 13,fontWeight: FontWeight.w600),),

                      ),
                    ),
                  ],
                ))
              ],
            ),)
          )
        ],
      ),
    );
  }
}
