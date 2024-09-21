import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:clubon/auths/authservice.dart';
import 'package:clubon/getxserver/businesslogic.dart';
import 'package:clubon/screens/searching.dart';
import 'package:clubon/utils/reusables/friendtile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';

import '../utils/styles/stylings.dart';

class Friends extends StatefulWidget {
  const Friends({super.key});

  @override
  State<Friends> createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  var pplBiz = Businness();
  String name = '';
  getDetails() async{
    QuerySnapshot theSnapshot =await FirebaseFirestore.instance.collection('users').where('uid', isEqualTo: FirebaseAuth.instance.currentUser!.uid).get();
    name = "${theSnapshot.docs[0]['name']}";
    setState(() {});
  }

  @override
  void initState() {
    getDetails();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Stylings.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        leadingWidth: 100,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 20),
          child: Text(
            "Friends",
            style: Stylings.titles.copyWith(fontSize: 12),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5.0, top: 5),
            child: IconButton(
              onPressed: () {
                Get.to(const Searching());
              },
              icon: const Icon(Icons.search),
              color: Colors.black,
              iconSize: 20,
            ),
          )
        ],
      ),
      body: Obx(()=>Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned.fill(
            child: Container(color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //header
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    height: Get.size.height * 0.1,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(top: BorderSide(color: Colors.grey.shade200))),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      width: Get.width,
                      decoration: BoxDecoration(
                          color: Stylings.bgColor,
                          borderRadius: BorderRadius.circular(10)),
                      height: Get.size.height * 0.055,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              alignment: Alignment.center,
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Stylings.orange),
                              child: Text(
                                "S",
                                style: Stylings.titles
                                    .copyWith(fontSize: 12, color: Colors.white),
                              )),
                          const SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Invite your friends to join Clubon",
                                style: Stylings.titles.copyWith(fontSize: 10),
                              ),
                              Text(
                                "Clubon.com/${Get.find<Businness>().firename.value.removeAllWhitespace.toLowerCase()}",
                                style: Stylings.subTitles
                                    .copyWith(fontSize: 9, color: Colors.black54),
                              )
                            ],
                          ),
                          const Expanded(child: SizedBox()),
                          GestureDetector(
                            onTap: () async {
                          await Share.share(
                          "Don't miss the fun, Join ${Get.find<Businness>().firename.value} on Clubon");
                          },
                            child: const Icon(
                                  FluentSystemIcons.ic_fluent_share_ios_regular,
                                  color: Colors.black,
                                  size: 20,
                                ),
                          )
                        ],
                      ),
                    ),
                  ),
                  //hosts
                  Expanded(child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: pplBiz.friendPage.value=="Suggestion"?Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Stylings.bgColor,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Host",
                                  style: Stylings.titles.copyWith(fontSize: 12),
                                ),
                                Text(
                                  "Sea all",
                                  style: Stylings.titles
                                      .copyWith(fontSize: 11, color: Colors.black54),
                                )
                              ],
                            ),
                          ),
                        ),
                        ...pplBiz.people.take(3).map((aPerson){
                          final pfp = aPerson['imgUrl'];
                          final name = aPerson['name'];
                          final userName = aPerson['username'];
                          return Friendtile(imgUrl: pfp.toString(), name: name.toString(), username: userName.toString(), iP: Icons.person_add_alt_outlined, action: 'Follow', iC: Icons.more_horiz,);
                        }),
                        //contacts
                        pplBiz.importContacts.value==true?
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              color: Stylings.bgColor,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Your contacts",
                                      style: Stylings.titles.copyWith(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            ...pplBiz.people.where((aContact)=>(int.parse(aContact['id'].toString()))>3).map((aCt){
                              return Friendtile(imgUrl: aCt['imgUrl'].toString(), name:  aCt['name'].toString(), username:  aCt['username'].toString(), iP: Icons.person_add_alt_outlined, action: 'Connect', iC: Icons.clear,);
                            }),
                            SizedBox(height: 40,child: Container(color: Colors.white,),),
                          ],
                        ):Container(
                          width: Get.width,
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: Get.width*0.25,
                                height: Get.width*0.25,
                                decoration: const BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: Image.asset("${Stylings.imgPath}/contacts.png", fit: BoxFit.contain,),
                              ),
                              Text("Going to an event is more fun with friends",style: Stylings.titles.copyWith(fontSize: 12),),
                              Text("Invite your contacts to connect with them on Clubon",style: Stylings.subTitles.copyWith(fontSize: 11,color: Colors.grey.shade500),),
                              GestureDetector(
                                onTap: (){
                                  Get.defaultDialog(
                                    radius: 10,
                                    titlePadding: const EdgeInsets.only(top: 25),
                                    contentPadding: const EdgeInsets.only(bottom: 20,top: 15,left: 15,right: 15),
                                    title: "Clubon wants to access your contacts",
                                    titleStyle: Stylings.titles.copyWith(fontSize: 14),
                                    middleText: "Grant Clubon access to your contact list to suggest friends you would like to invite",
                                    middleTextStyle: Stylings.subTitles.copyWith(fontSize: 12),
                                    backgroundColor: Colors.white,
                                    cancel: GestureDetector(
                                      onTap: (){
                                        Get.back();
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 10),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius: BorderRadius.circular(10),
                                            border: Border.all(color: Colors.black26)
                                        ),
                                        width: Get.size.width*0.3,
                                        height: Get.size.height*0.04,
                                        child: Text("Cancel", style: Stylings.titles.copyWith(fontSize: 12),),
                                      ),
                                    ),
                                    confirm: GestureDetector(
                                      onTap: (){
    pplBiz.importContacts.value=true;
                                          Get.back();

                                      },
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 10),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius: BorderRadius.circular(10),
                                            border: Border.all(color: Colors.black26)
                                        ),
                                        width: Get.size.width*0.3,
                                        height: Get.size.height*0.04,
                                        child: Text("Approve", style: Stylings.titles.copyWith(fontSize: 12),),
                                      ),
                                    ),


                                  );
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Stylings.orange,
                                    borderRadius: BorderRadius.circular(5)
                                  ),
                                 height: Get.height*0.05,
                                              margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                                  width: Get.size.width,
                                  child: Text("Import my contacts",style: Stylings.titles.copyWith(color: Colors.white,fontSize: 12),),
                                ),
                              )
                            ],
                          ),
                        ),

                      ],
                    ):pplBiz.friendPage.value=="Friends"?Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Stylings.bgColor,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "My friends (10)",
                                  style: Stylings.titles.copyWith(fontSize: 11),
                                ),
                              ],
                            ),
                          ),
                        ),
                        ...pplBiz.people.map((aPerson){
                          final pfp = aPerson['imgUrl'];
                          final name = aPerson['name'];
                          final userName = aPerson['username'];
                          return Friendtile(imgUrl: pfp.toString(), name: name.toString(), username: userName.toString(), iP: Icons.person_remove_outlined, action: 'Remove', iC: Icons.more_horiz,);
                        }),
                        SizedBox(height: 40,child: Container(color: Colors.white,),),
                      ],
                    ):Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Stylings.bgColor,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Sent Request (4)",
                                  style: Stylings.titles.copyWith(fontSize: 11),
                                ),
                              ],
                            ),
                          ),
                        ),
                        ...pplBiz.people.take(4).map((aPerson){
                          final pfp = aPerson['imgUrl'];
                          final name = aPerson['name'];
                          final userName = aPerson['username'];
                          return Friendtile(imgUrl: pfp.toString(), name: name.toString(), username: userName.toString(), iP: Icons.person_add_disabled_outlined, action: 'Cancel', iC: Icons.more_horiz,);
                        }),
                        //contacts
                        Container(
                          color: Stylings.bgColor,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Friend Requests (6)",
                                  style: Stylings.titles.copyWith(fontSize: 11),
                                ),
                              ],
                            ),
                          ),
                        ),
                        ...pplBiz.people.where((aContact)=>(int.parse(aContact['id'].toString()))>4).map((aCt){
                          return Friendtile(imgUrl: aCt['imgUrl'].toString(), name:  aCt['name'].toString(), username:  aCt['username'].toString(), iP: Icons.person_outline_sharp, action: 'Accept', iC: Icons.clear,);
                        }),
                        SizedBox(height: 40,child: Container(color: Colors.white,),),
                      ],
                    ),
                  ))
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            child: Container(
              padding: const EdgeInsets.all(5),
              width: Get.size.width*0.75,
              height: Get.size.height*0.05,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Stylings.bgColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      pplBiz.friendPage.value="Suggestion";
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: pplBiz.friendPage.value=="Suggestion"?Colors.white:Stylings.bgColor,
                      ),
                      child: Text("Suggestions",style: Stylings.titles.copyWith(fontSize: 11),),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        pplBiz.friendPage.value="Friends";
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: pplBiz.friendPage.value=="Friends"?Colors.white:Stylings.bgColor,
                        ),
                        child: Text("Friends",style: Stylings.titles.copyWith(fontSize: 11),),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      pplBiz.friendPage.value="Requests";
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 11),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: pplBiz.friendPage.value=="Requests"?Colors.white:Stylings.bgColor,
                      ),
                      child: Text("Requests",style: Stylings.titles.copyWith(fontSize: 12),),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),),
    );
  }
}
