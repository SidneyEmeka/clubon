import 'package:clubon/onboarding/signinmethod.dart';
import 'package:clubon/screens/detandadrsettings.dart';
import 'package:clubon/screens/privandnotsettings.dart';
import 'package:clubon/screens/rateapp.dart';
import 'package:clubon/screens/termsandprivacy.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:share_plus/share_plus.dart';

import '../screens/feedback.dart';
import '../utils/styles/stylings.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isInfluencer = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30,
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 17,
          ),
        ),
        title: Text("Settings",style: Stylings.titles.copyWith(fontSize: 11),),
        centerTitle: true,
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        child: ListView(
          children: [
            Text("Become an influencer",style: Stylings.titles.copyWith(fontSize: 11),),
            const SizedBox(height: 10,),
            Text("You can earn up to \$30,000 every month when you become an influencer",textAlign: TextAlign.start,style: Stylings.subTitles.copyWith(fontSize: 10,color: Colors.grey.shade600),),
            Container(
              width: Get.width,
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(color: Colors.grey.shade200),
              ),
              child: SwitchListTile(
                value: isInfluencer,
                activeColor:Colors.white,
                 contentPadding: EdgeInsets.zero,
                splashRadius: 2,
                activeTrackColor: Stylings.orange,
                isThreeLine: false,
                trackOutlineColor: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
                  return Colors.transparent; // Use the default color.
                }),
                inactiveTrackColor: Colors.grey.shade300,
                inactiveThumbColor: Colors.white,
                onChanged: (value){
                  setState(() {
                  isInfluencer=value;
                  });
                },
                title: Text("Become an influencer",style: Stylings.titles.copyWith(fontSize: 11),),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: (){
                Get.to(()=>const Detandadrsettings(which: "my"));
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey.shade100))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.person_outline_sharp,size: 17,color: Colors.black,),
                    const SizedBox(width: 5,),
                    Text("My details",style: Stylings.titles.copyWith(fontSize: 11),),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Get.to(()=> const Privandnotsettings(which: "pri"));
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey.shade100))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.privacy_tip_outlined,size: 17,color: Colors.black,),
                    const SizedBox(width: 5,),
                    Text("Privacy",style: Stylings.titles.copyWith(fontSize: 11),),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                showModalBottomSheet(
                  backgroundColor: Colors.white,
                    context: context,
                    showDragHandle: true,
                    isScrollControlled: true,
                    builder: (_){
                  return Container(
                    color: Colors.white,
                   width: Get.width,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     mainAxisSize: MainAxisSize.min,
                     children: [
                       Text("How's Clubon going for you",style: Stylings.titles.copyWith(fontSize: 12),),
                       RatingBar.builder(itemBuilder: (context, _)=>Icon(FluentSystemIcons.ic_fluent_star_regular,color: Stylings.orange,),
                           onRatingUpdate: (rating){
                         Get.to(()=>Rateapp(rate: rating,));
                           },
                         unratedColor: Colors.black,
                       itemSize: 23,
                       itemPadding: const EdgeInsets.symmetric(vertical: 15,horizontal: 4),),
                       GestureDetector(
                         onTap: (){
                           Get.back();
                         },
                         child: Container(
                           alignment: Alignment.center,
                           width: Get.width*0.3,
                           padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                           margin: const EdgeInsets.only(bottom: 20),
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(30),
                             color: Stylings.bgColor
                           ),
                           child: Text("Ask me later",style: Stylings.titles.copyWith(fontSize: 11)),
                         ),
                       ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 5.0),
                        child: GestureDetector(
                          onTap: (){
                            Get.back();
                          },
                          child: RichText(textAlign: TextAlign.center,text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Sometimes we pop by to get feedback. Not interested? you can",
                                style: Stylings.subTitles.copyWith(fontSize: 11)
                              ),
                              TextSpan(
                                text: " opt out",
                                style: Stylings.titles.copyWith(fontSize: 11)
                              ),
                            ]
                          )),
                        ),
                      ),
                       const SizedBox(height: 30,),
                       ],
                   )
                  );
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey.shade100))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.star_outline_sharp,size: 17,color: Colors.black,),
                    const SizedBox(width: 5,),
                    Text("Rate the app",style: Stylings.titles.copyWith(fontSize: 11),),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Get.to(()=>const Privandnotsettings(which: "not"));
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey.shade100))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.notifications_none_outlined,size: 17,color: Colors.black,),
                    const SizedBox(width: 5,),
                    Text("Notifications",style: Stylings.titles.copyWith(fontSize: 11),),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Get.to(()=> const Detandadrsettings(which: "ad"));
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey.shade100))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.location_on_outlined,size: 17,color: Colors.black,),
                    const SizedBox(width: 5,),
                    Text("Address",style: Stylings.titles.copyWith(fontSize: 11),),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: ()async {
                await Share.share(
                    "Tired of missing awesome events? Download Clubon - Clubon.com");
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey.shade100))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.ios_share_sharp,size: 17,color: Colors.black,),
                    const SizedBox(width: 5,),
                    Text("Share the app",style: Stylings.titles.copyWith(fontSize: 11),),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Get.to(()=> const Report());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey.shade100))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.support_agent_rounded,size: 17,color: Colors.black,),
                    const SizedBox(width: 5,),
                    Text("Give us feedback",style: Stylings.titles.copyWith(fontSize: 11),),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Get.to(()=>const Termsandprivacy(which: 'terms',));
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey.shade100))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.padding_outlined,size: 17,color: Colors.black,),
                    const SizedBox(width: 5,),
                    Text("Terms and conditions",style: Stylings.titles.copyWith(fontSize: 11),),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                showModalBottomSheet(
                    backgroundColor: Colors.white,
                    context: context,
                    showDragHandle: true,
                    isScrollControlled: true,
                    builder: (_){
                      return Container(
                          color: Colors.white,
                          width: Get.width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                child: Image.asset("assets/images/cache.png",fit: BoxFit.cover,),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 15.0),
                                child: Text("Clubon should be running smoother now ",style: Stylings.titles.copyWith(fontSize: 11),),
                              ),
                              GestureDetector(
                                onTap: (){
                                  Get.back();
                                },
                                child: Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 40),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.grey.shade200),
                                  width: Get.width,
                                  height: 40,
                                  child: Text("Ok",style: Stylings.titles.copyWith(fontSize: 12,color: Stylings.orange),),
                                ),
                              ),
                              const SizedBox(height: 20,),
                            ],
                          )
                      );
                    });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey.shade100))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.delete_forever_outlined,size: 17,color: Colors.black,),
                    const SizedBox(width: 5,),
                    Text("Clear caches",style: Stylings.titles.copyWith(fontSize: 11),),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Get.defaultDialog(
                  radius: 10,
                  titlePadding: const EdgeInsets.only(top: 25),
                  contentPadding: const EdgeInsets.only(bottom: 20,top: 15,left: 10,right: 10),
                  title: "Sign out",
                  titleStyle: Stylings.titles.copyWith(fontSize: 14),
                  middleText: "Are you sure you sure you want to log out?",
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
                      child: Text("Stay", style: Stylings.titles.copyWith(fontSize: 12),),
                    ),
                  ),
                  confirm: GestureDetector(
                    onTap: (){
                      FirebaseAuth.instance.signOut();
                      Get.offAll(()=>const Signinmethod());
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
                      child: Text("Log out", style: Stylings.titles.copyWith(fontSize: 12),),
                    ),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey.shade100))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.logout,size: 17,color: Colors.black,),
                    const SizedBox(width: 5,),
                    Text("Log out",style: Stylings.titles.copyWith(fontSize: 11),),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey.shade100))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.help_outline_outlined,size: 17,color: Colors.black,),
                  const SizedBox(width: 5,),
                  Text("Support",style: Stylings.titles.copyWith(fontSize: 11),),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.person_off_outlined,size: 17,color: Colors.black,),
                  const SizedBox(width: 5,),
                  Text("Delete account",style: Stylings.titles.copyWith(fontSize: 11),),
                ],
              ),
            ),
            const SizedBox(height: 40,)
          ],
        ),
      ),
    );
  }
}
