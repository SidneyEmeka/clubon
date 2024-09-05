import 'package:clubon/homepage.dart';
import 'package:clubon/onboarding/signinmethod.dart';
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
            height: size.height*0.335,
            width: size.width,
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            padding: const EdgeInsets.only(top:  50),
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
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_){
                      return const Homepage();
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
                Expanded(child: SizedBox())
              ],
            ),
          )
        ],
      ),
    );
  }
}
