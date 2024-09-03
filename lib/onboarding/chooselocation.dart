import 'package:clubon/onboarding/setnotification.dart';
import 'package:clubon/onboarding/signinmethod.dart';

import 'package:flutter/material.dart';

import '../utils/styles/stylings.dart';

class Chooselocation extends StatelessWidget {
  const Chooselocation({super.key});

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
            child: Image.asset("${Stylings.imgPath}/location.png", fit: BoxFit.cover,),
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
            height: size.height*0.4,
            width: size.width,
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
           padding: const EdgeInsets.symmetric(vertical: 60),
           decoration: BoxDecoration(
               color: Colors.white.withOpacity(0.8),
               boxShadow: [
                 BoxShadow(
                     blurRadius: 20,
                     offset: const Offset(-10, -10),
                     color: Colors.black.withOpacity(0.3)
                 ),
                 BoxShadow(
                     blurRadius: 20,
                     offset: const Offset(10, 10),
                     color: Colors.white.withOpacity(0.5)
                 ),

               ],
             borderRadius: BorderRadius.circular(20)
           ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                Text(
                  "See What's on Near You",
                  style: Stylings.titles.copyWith(fontSize: 30, fontWeight: FontWeight.w900),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Text(
                      textAlign: TextAlign.center,
                      "Select an area to get a tailored experience",
                      style: Stylings.subTitles.copyWith(fontSize: 14)),
                ),
                const Expanded(child: SizedBox()),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_){
                      return Setnotification();
                    }));
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
                    alignment: Alignment.center,
                    width: size.width,
                    height: 55,
                    decoration: BoxDecoration(
                        color: Stylings.orange,
                        borderRadius: BorderRadius.circular(8)),
                    child: Text("Use Current Location", style: Stylings.body.copyWith(fontSize: 13,fontWeight: FontWeight.w600,color: Colors.white),),

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
                    child: Text("Choose Location", style: Stylings.body.copyWith(fontSize: 13,fontWeight: FontWeight.w600),),

                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
