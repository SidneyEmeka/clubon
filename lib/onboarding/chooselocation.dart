import 'package:clubon/data/constantdata.dart';
import 'package:clubon/getxserver/businesslogic.dart';
import 'package:clubon/onboarding/setnotification.dart';
import 'package:clubon/onboarding/signinmethod.dart';
import 'package:clubon/utils/reusables/glassmorph.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/styles/stylings.dart';

class Chooselocation extends StatefulWidget {
  const Chooselocation({super.key});

  @override
  State<Chooselocation> createState() => _ChooselocationState();
}

class _ChooselocationState extends State<Chooselocation> {
  Future _dispayBottomSheet() {
    return showModalBottomSheet(context: context,
        isScrollControlled: true,
        backgroundColor: Colors.white,
        enableDrag: true,
        showDragHandle: true,
        builder: (_){
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        width: Get.width,
        height: Get.height*0.6,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.85,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black12.withOpacity(0.04),
                      border: Border.all(color: Colors.white)),
                  child: TextFormField(
                    cursorHeight: 20,
                    cursorColor: Colors.grey.shade500,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 20),
                        hintText: "Search your city",
                        hintStyle: Stylings.subTitles.copyWith(fontSize: 12),
                        border: InputBorder.none),
                  ),
                ),
                Expanded(child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 25,
                    height: 25,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      color: Colors.black,
                      "${Stylings.imgPath}/bad.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ))
              ],
            ),
            const SizedBox(height: 20,),
            Container(
              child: Expanded(
                child: ListView(
                  children: [
                    //Florida
                    GestureDetector(
                      onTap: (){
                        Get.find<Businness>().location.value = "Florida";
                        Get.back();
                        Future.delayed(const Duration(milliseconds: 200),(){ Get.to(()=>const Setnotification());});

                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 2,bottom: 10),
                        child: Text("Florida",style: Stylings.titles.copyWith(fontSize: 12),),
                      ),
                    ),
                     Divider(color: Colors.black12.withOpacity(0.05), height: 2,),
                    ...Clubon.florida.map((aFcity){
                      return GestureDetector(
                        onTap: (){
                          Get.find<Businness>().location.value = aFcity;
                          Get.back();
                          Future.delayed(const Duration(milliseconds: 200),(){ Get.to(()=>const Setnotification());});
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: 2,
                                color: Colors.black12.withOpacity(0.05),
                              )
                            )
                          ),
                          width: MediaQuery.of(context).size.width,
                          child: Text(aFcity,style: Stylings.subTitles.copyWith(fontSize: 11),),
                        ),
                      );
                    }),
                    //Canada
                    GestureDetector(
                      onTap: (){
                        Get.find<Businness>().location.value = "Canada";
                        Get.back();
                        Future.delayed(const Duration(milliseconds: 200),(){ Get.to(()=>const Setnotification());});

                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20,bottom: 10),
                        child: Text("Canada",style: Stylings.titles.copyWith(fontSize: 12),),
                      ),
                    ),
                    Divider(color: Colors.black12.withOpacity(0.05), height: 2,),
                    ...Clubon.canada.map((aFcity){
                      return GestureDetector(
                        onTap: (){
                          Get.find<Businness>().location.value = aFcity;
                          Get.back();
                          Future.delayed(const Duration(milliseconds: 200),(){ Get.to(()=>const Setnotification());});

                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                    width: 2,
                                    color: Colors.black12.withOpacity(0.05),
                                  )
                              )
                          ),
                          width: MediaQuery.of(context).size.width,
                          child: Text(aFcity,style: Stylings.subTitles.copyWith(fontSize: 11),),
                        ),
                      );
                    }),
                    //Andorra
                    GestureDetector(
                      onTap: (){
                        Get.find<Businness>().location.value = "Andorra";
                        Get.back();
                        Future.delayed(const Duration(milliseconds: 200),(){ Get.to(()=>const Setnotification());});

                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20,bottom: 10),
                        child: Text("Andorra",style: Stylings.titles.copyWith(fontSize: 12),),
                      ),
                    ),
                    Divider(color: Colors.black12.withOpacity(0.05), height: 2,),
                    ...Clubon.andorra.map((aFcity){
                      return GestureDetector(
                        onTap: (){
                          Get.find<Businness>().location.value = aFcity;
                          Get.back();
                          Future.delayed(const Duration(milliseconds: 200),(){ Get.to(()=>const Setnotification());});

                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 13),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                    width: 2,
                                    color: Colors.black12.withOpacity(0.05),
                                  )
                              )
                          ),
                          width: MediaQuery.of(context).size.width,
                          child: Text(aFcity,style: Stylings.subTitles.copyWith(fontSize: 11),),
                        ),
                      );
                    }),
                    //Austria
                    GestureDetector(
                      onTap: (){
                        Get.find<Businness>().location.value = "Austria";
                        Get.back();
                        Future.delayed(const Duration(milliseconds: 200),(){ Get.to(()=>const Setnotification());});

                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20,bottom: 10),
                        child: Text("Austria",style: Stylings.titles.copyWith(fontSize: 12),),
                      ),
                    ),
                    Divider(color: Colors.black12.withOpacity(0.05), height: 2,),
                    ...Clubon.austria.map((aFcity){
                      return GestureDetector(
                        onTap: (){
                          Get.find<Businness>().location.value = aFcity;
                          Get.back();
                          Future.delayed(const Duration(milliseconds: 200),(){ Get.to(()=>const Setnotification());});

                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                    width: 2,
                                    color: Colors.black12.withOpacity(0.05),
                                  )
                              )
                          ),
                          width: MediaQuery.of(context).size.width,
                          child: Text(aFcity,style: Stylings.subTitles.copyWith(fontSize: 11),),
                        ),
                      );
                    }),
                    //Belgium
                    GestureDetector(
                      onTap: (){
                        Get.find<Businness>().location.value = "Belguim";
                        Get.back();
                        Future.delayed(const Duration(milliseconds: 200),(){ Get.to(()=>const Setnotification());});

                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20, bottom: 10),
                        child: Text("Belgium",style: Stylings.titles.copyWith(fontSize: 12),),
                      ),
                    ),
                    Divider(color: Colors.black12.withOpacity(0.05), height: 2,),
                    ...Clubon.belguim.map((aFcity){
                      return GestureDetector(
                        onTap: (){
                          Get.find<Businness>().location.value = aFcity;
                          Get.back();
                          Future.delayed(const Duration(milliseconds: 200),(){ Get.to(()=>const Setnotification());});

                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                    width: 2,
                                    color: Colors.black12.withOpacity(0.05),
                                  )
                              )
                          ),
                          width: MediaQuery.of(context).size.width,
                          child: Text(aFcity,style: Stylings.subTitles.copyWith(fontSize: 11),),
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
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
            height: size.height*0.4,
            width: size.width,
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: Glassmorph(blur: 20, opacity: 0.2, child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Expanded(flex:2,child: SizedBox()),
                Text(
                  "See What's on Near You",
                  style: Stylings.titles.copyWith(fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Text(
                      textAlign: TextAlign.center,
                      "Select an area to get a tailored experience",
                      style: Stylings.titles.copyWith(fontSize: 10)),
                ),
                const Expanded(flex:1,child: SizedBox()),
                GestureDetector(
                  onTap: () {
                   Get.offAll(()=>const Setnotification());
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
                    alignment: Alignment.center,
                    width: size.width,
                    height: Get.height*0.065,
                    decoration: BoxDecoration(
                        color: Stylings.orange,
                        borderRadius: BorderRadius.circular(8)),
                    child: Text("Use Current Location", style: Stylings.titles.copyWith(fontSize: 12,color: Colors.white),),

                  ),
                ),
                const SizedBox(height: 5),
                GestureDetector(
                  onTap: _dispayBottomSheet,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    alignment: Alignment.center,
                    width: size.width,
                    height: Get.height*0.065,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Text("Choose Location", style: Stylings.titles.copyWith(fontSize: 12),),

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
