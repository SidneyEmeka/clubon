import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:clubon/auths/authservice.dart';
import 'package:clubon/homepage.dart';
import 'package:clubon/screens/buyticket.dart';
import 'package:clubon/screens/earnings.dart';
import 'package:clubon/screens/frfopreviewpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../data/constantdata.dart';
import '../getxserver/businesslogic.dart';
import '../utils/reusables/receventscard.dart';
import '../utils/styles/stylings.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  //  String name = '';
  // getDetails() async{
  //   QuerySnapshot theSnapshot =await FirebaseFirestore.instance.collection('users').where('uid', isEqualTo: FirebaseAuth.instance.currentUser!.uid).get();
  //   name = "${theSnapshot.docs[0]['name']}";
  //   setState(() {
  //   });
  // }
  //
  // @override
  // void initState() {
  //  getDetails();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 150,
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15, top: 20.0),
          child: Text(
            "Profile",
            style: Stylings.titles.copyWith(fontSize: 12),
          ),
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
                  child: Image.asset(
                    "${Stylings.imgPath}/chatl.png",
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    "${Stylings.imgPath}/barl.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: Obx(()=>ListView(
        children: [
          Container(
            width: Get.width,
            height: Get.height * 0.3,
            color: Colors.white,
            child: Stack(
              children: [
                //cover pic
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      width: Get.width,
                      height: Get.height * 0.235,
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                              image: AssetImage("assets/images/ban4.jpg"),
                              fit: BoxFit.fill)),
                    ),
                    Positioned(
                      right: 15,
                      bottom: 10,
                      child: Container(
                        width: 18,
                        height: 18,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Stylings.bgColor),
                        child: const Icon(
                          Icons.mode_edit_outline_outlined,
                          color: Colors.black,
                          size: 10,
                        ),
                      ),
                    ),
                  ],
                ),
                //pfp
                Positioned(
                  top: Get.height * 0.18,
                  left: Get.width * 0.06,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: Get.width * 0.22,
                        height: Get.width * 0.22,
                        decoration: const BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                      ),
                      Container(
                        width: Get.width * 0.2,
                        height: Get.width * 0.2,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/clock.png"),
                                fit: BoxFit.fill),
                            shape: BoxShape.circle),
                      ),
                      Positioned(
                        top: Get.height*0.065,
                        left: Get.width*0.17,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Stylings.bgColor),
                          child: const Icon(
                            Icons.mode_edit_outline_outlined,
                            color: Colors.black,
                            size: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    alignment: Alignment.topLeft,
                    width: Get.width * 0.71,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child:   Text(Get.find<Businness>().firename.value, style: Stylings.titles.copyWith(fontSize: 12),
                    ),
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
                GestureDetector(
                  onTap: () {
                    Get.to(() => const Frfopreviewpage(),
                        arguments: "Following (0)");
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "0",
                        style: Stylings.titles.copyWith(fontSize: 11),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Following",
                        style: Stylings.titles.copyWith(fontSize: 10),
                      ),
                    ],
                  ),
                ),
                //followers
                GestureDetector(
                  onTap: () {
                    Get.to(() => const Frfopreviewpage(),
                        arguments: "Followers (10)");
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "10",
                        style: Stylings.titles.copyWith(fontSize: 11),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Followers",
                        style: Stylings.titles.copyWith(fontSize: 10),
                      ),
                    ],
                  ),
                ),
                //Host
                GestureDetector(
                  onTap: () {
                    Get.to(() => const Frfopreviewpage(),
                        arguments: "Hosts (5)");
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "5",
                        style: Stylings.titles.copyWith(fontSize: 11),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Hosts",
                        style: Stylings.titles.copyWith(fontSize: 10),
                      ),
                    ],
                  ),
                ),
                //Earning
                GestureDetector(
                  onTap: (){
                    Get.to(()=> const Earnings());
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "\$32k",
                        style: Stylings.titles.copyWith(fontSize: 11),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Earnings",
                        style: Stylings.titles.copyWith(fontSize: 10),
                      ),
                    ],
                  ),
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
                    width: Get.width * 0.38,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Stylings.bgColor),
                    child: Text(
                      "Edit profile",
                      style: Stylings.titles.copyWith(fontSize: 11),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    alignment: Alignment.center,
                    width: Get.width * 0.38,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Stylings.bgColor),
                    child: Text(
                      "Share profile",
                      style: Stylings.titles.copyWith(fontSize: 11),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                      alignment: Alignment.center,
                      width: Get.width * 0.13,
                      height: 42,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Stylings.bgColor),
                      child: const Icon(
                        Icons.person_add_alt_outlined,
                        size: 17,
                        color: Colors.black,
                      )),
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
                  style: Stylings.titles
                      .copyWith(fontSize: 11, color: Colors.black),
                ),
                const Expanded(child: SizedBox()),
                Text(
                  "See all",
                  style: Stylings.titles
                      .copyWith(fontSize: 11, color: Colors.black),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.black,
                  size: 12,
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...Clubon.past.take(2).map((uC) {
                  return Receventscard(
                    imgUrl: uC['imgUrl'],
                    title: uC['title'],
                    date: uC['date'],
                    pfp: uC['pfp'],
                    username: uC['username'],
                  );
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
                  style: Stylings.titles
                      .copyWith(fontSize: 11, color: Colors.black),
                ),
                const Expanded(child: SizedBox()),
                Text(
                  "See all",
                  style: Stylings.titles
                      .copyWith(fontSize: 11, color: Colors.black),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.black,
                  size: 12,
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            color: Stylings.bgColor,
            height: Get.height * 0.09,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "No Past Events",
                  style: Stylings.titles
                      .copyWith(fontSize: 11, color: Colors.black),
                ),
                Text(
                  "You don't have any past events",
                  style: Stylings.titles
                      .copyWith(fontSize: 10, color: Colors.black26),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.off(const Homepage());
            },
            child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 40),
                 height: Get.height * 0.05,
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Stylings.orange,
                ),
                child: Text(
                  "Browse Events",
                  style: Stylings.titles
                      .copyWith(fontSize: 11, color: Colors.white),
                )),
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
                  style: Stylings.titles
                      .copyWith(fontSize: 11, color: Colors.black),
                ),
                const Expanded(child: SizedBox()),
                Text(
                  "See all",
                  style: Stylings.titles
                      .copyWith(fontSize: 11, color: Colors.black),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.black,
                  size: 12,
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...Clubon.upcoming.take(2).map((uC) {
                  return Receventscard(
                    imgUrl: uC['imgUrl'],
                    title: uC['title'],
                    date: uC['date'],
                    pfp: uC['pfp'],
                    username: uC['username'],
                  );
                })
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
