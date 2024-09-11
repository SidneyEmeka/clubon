import 'package:clubon/homepage.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../data/constantdata.dart';
import '../utils/reusables/receventscard.dart';
import '../utils/styles/stylings.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 150,
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15,top: 15.0),
          child: Text("Profile",style: Stylings.titles.copyWith(fontSize: 15),),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset("${Stylings.imgPath}/chatl.png", fit: BoxFit.contain,),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset("${Stylings.imgPath}/barl.png", fit: BoxFit.contain,),
                ),
              ],
            ),
          )
         ],
      ),
      body: ListView(
        children: [
          Container(
            width: Get.width,
            height: Get.height*0.3,
            color: Colors.white,
            child: Stack(
              children: [
                //cover pic
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      width: Get.width,
                      height: Get.height*0.235,
                      decoration: const BoxDecoration(
                          color: Colors.black,
                        image: DecorationImage(image: AssetImage("assets/images/ban4.jpg"),fit: BoxFit.fill)
                      ),
                    ),
                    Positioned(
                      right: 15,
                      bottom: 10,
                      child: Container(
                        width: 18,
                        height: 18,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Stylings.bgColor
                        ),
                        child: Icon(Icons.mode_edit_outline_outlined,color: Colors.black,size: 10,),
                      ),
                    ),
                  ],
                ),
                //pfp
                Positioned(
                  top: Get.height*0.18,
                  left: Get.width*0.07,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: Get.width*0.22,
                        height: Get.width*0.22,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                          shape: BoxShape.circle ),
                      ),
                      Container(
                        width: Get.width*0.2,
                        height: Get.width*0.2,
                        decoration: const BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/clock.png"),fit: BoxFit.fill),
                            shape: BoxShape.circle ),
                      ),
                      Positioned(
                        top: 60,
                        left: 65,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Stylings.bgColor
                          ),
                          child: Icon(Icons.mode_edit_outline_outlined,color: Colors.black,size: 12,),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    alignment: Alignment.topLeft,
                    width: Get.width*0.71,
                    height: 40,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                    child: Text("Nnaemeka Sidney",style: Stylings.titles.copyWith(fontSize: 15),),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //following
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("0",style: Stylings.titles.copyWith(fontSize: 12),),
                    const SizedBox(height: 5,),
                    Text("Following",style: Stylings.titles.copyWith(fontSize: 11),),
                  ],
                ),
                //followers
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("1.2M",style: Stylings.titles.copyWith(fontSize: 12),),
                    const SizedBox(height: 5,),
                    Text("Followers",style: Stylings.titles.copyWith(fontSize: 11),),
                  ],
                ),
                //Host
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("9",style: Stylings.titles.copyWith(fontSize: 12),),
                    const SizedBox(height: 5,),
                    Text("Hosts",style: Stylings.titles.copyWith(fontSize: 11),),
                  ],
                ),
                //Earning
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("\$312k",style: Stylings.titles.copyWith(fontSize: 12),),
                    const SizedBox(height: 5,),
                    Text("Earnings",style: Stylings.titles.copyWith(fontSize: 11),),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Container(
                    alignment: Alignment.center,
                    width: Get.width*0.38,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Stylings.bgColor
                    ),
                    child: Text("Edit profile",style: Stylings.titles.copyWith(fontSize: 12),),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    alignment: Alignment.center,
                    width: Get.width*0.38,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Stylings.bgColor
                    ),
                    child: Text("Share profile",style: Stylings.titles.copyWith(fontSize: 12),),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    alignment: Alignment.center,
                    width: Get.width*0.13,
                    height: 42,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Stylings.bgColor
                    ),
                    child: Icon(Icons.person_add_alt_outlined,size: 20,color: Colors.black,)),
                ),
              ],
            ),
          ),
          //upcoming
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            color: Stylings.bgColor,
            height: 47,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Upcoming events",
                  style: Stylings.titles.copyWith(
                      fontSize: 12,
                      color:  Colors.black),
                ),
                const Expanded(child: SizedBox()),
                Text(
                  "See all",
                  style: Stylings.titles.copyWith(
                      fontSize: 12,
                      color:  Colors.black),
                ),
                const SizedBox(width: 5,),
                const Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 15,)
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...Clubon.past.take(2).map((uC){
                  return Receventscard(imgUrl: uC['imgUrl'], title: uC['title'], date: uC['date'], pfp: uC['pfp'], username: uC['username'],);
                })
              ],
            ),
          ),
          //past
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            color: Stylings.bgColor,
            height: 47,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Past events",
                  style: Stylings.titles.copyWith(
                      fontSize: 12,
                      color:  Colors.black),
                ),
                const Expanded(child: SizedBox()),
                Text(
                  "See all",
                  style: Stylings.titles.copyWith(
                      fontSize: 12,
                      color:  Colors.black),
                ),
                const SizedBox(width: 5,),
                const Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 15,)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            color: Stylings.bgColor,
            height: Get.height*0.07,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "No Past Events",
                  style: Stylings.titles.copyWith(
                      fontSize: 12,
                      color:  Colors.black),
                ),
                const Expanded(child: SizedBox()),
                Text(
                  "You don't have any past events",
                  style: Stylings.titles.copyWith(
                      fontSize: 10,
                      color:  Colors.black12),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              Get.off(Homepage());
            },
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              height: Get.height*0.05,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Stylings.orange,
              ),
              child: Text("Browse Events",style: Stylings.titles.copyWith(fontSize: 12,color: Colors.white),)
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            color: Stylings.bgColor,
            height: 47,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Saved",
                  style: Stylings.titles.copyWith(
                      fontSize: 12,
                      color:  Colors.black),
                ),
                const Expanded(child: SizedBox()),
                Text(
                  "See all",
                  style: Stylings.titles.copyWith(
                      fontSize: 12,
                      color:  Colors.black),
                ),
                const SizedBox(width: 5,),
                const Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 15,)
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...Clubon.upcoming.take(2).map((uC){
                  return Receventscard(imgUrl: uC['imgUrl'], title: uC['title'], date: uC['date'], pfp: uC['pfp'], username: uC['username'],);
                })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
