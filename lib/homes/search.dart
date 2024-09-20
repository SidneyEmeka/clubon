import 'package:clubon/getxserver/businesslogic.dart';
import 'package:clubon/screens/searching.dart';
import 'package:clubon/utils/reusables/eventcard.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../data/constantdata.dart';
import '../utils/reusables/receventscard.dart';
import '../utils/styles/stylings.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  var evBiz = Businness();
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
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(left: 20),
                            hintText: "Search your city",
                            hintStyle: Stylings.titles.copyWith(fontSize: 12),
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
                           },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, top: 2,bottom: 10),
                            child: Text("Florida",style: Stylings.titles.copyWith(fontSize: 15),),
                          ),
                        ),
                        Divider(color: Colors.black12.withOpacity(0.05), height: 2,),
                        ...Clubon.florida.map((aFcity){
                          return GestureDetector(
                            onTap: (){
                              Get.find<Businness>().location.value = aFcity;
                              Get.back();
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
                              child: Text(aFcity,style: Stylings.subTitles.copyWith(fontSize: 13),),
                            ),
                          );
                        }),
                        //Canada
                        GestureDetector(
                          onTap: (){
                            Get.find<Businness>().location.value = "Canada";
                            Get.back();
                           },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20,bottom: 10),
                            child: Text("Canada",style: Stylings.titles.copyWith(fontSize: 15),),
                          ),
                        ),
                        Divider(color: Colors.black12.withOpacity(0.05), height: 2,),
                        ...Clubon.canada.map((aFcity){
                          return GestureDetector(
                            onTap: (){
                              Get.find<Businness>().location.value = aFcity;
                              Get.back();
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
                              child: Text(aFcity,style: Stylings.subTitles.copyWith(fontSize: 13),),
                            ),
                          );
                        }),
                        //Andorra
                        GestureDetector(
                          onTap: (){
                            Get.find<Businness>().location.value = "Andorra";
                            Get.back();
                             },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20,bottom: 10),
                            child: Text("Andorra",style: Stylings.titles.copyWith(fontSize: 15),),
                          ),
                        ),
                        Divider(color: Colors.black12.withOpacity(0.05), height: 2,),
                        ...Clubon.andorra.map((aFcity){
                          return GestureDetector(
                            onTap: (){
                              Get.find<Businness>().location.value = aFcity;
                              Get.back();
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
                              child: Text(aFcity,style: Stylings.subTitles.copyWith(fontSize: 13),),
                            ),
                          );
                        }),
                        //Austria
                        GestureDetector(
                          onTap: (){
                            Get.find<Businness>().location.value = "Austria";
                            Get.back();
                             },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20,bottom: 10),
                            child: Text("Austria",style: Stylings.titles.copyWith(fontSize: 15),),
                          ),
                        ),
                        Divider(color: Colors.black12.withOpacity(0.05), height: 2,),
                        ...Clubon.austria.map((aFcity){
                          return GestureDetector(
                            onTap: (){
                              Get.find<Businness>().location.value = aFcity;
                              Get.back();
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
                              child: Text(aFcity,style: Stylings.subTitles.copyWith(fontSize: 13),),
                            ),
                          );
                        }),
                        //Belgium
                        GestureDetector(
                          onTap: (){
                            Get.find<Businness>().location.value = "Belguim";
                            Get.back();
                            },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20, bottom: 10),
                            child: Text("Belgium",style: Stylings.titles.copyWith(fontSize: 15),),
                          ),
                        ),
                        Divider(color: Colors.black12.withOpacity(0.05), height: 2,),
                        ...Clubon.belguim.map((aFcity){
                          return GestureDetector(
                            onTap: (){
                              Get.find<Businness>().location.value = aFcity;
                              Get.back();
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
                              child: Text(aFcity,style: Stylings.subTitles.copyWith(fontSize: 13),),
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
    return Scaffold(
        body: Obx(
      () => SafeArea(
          child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        width: Get.size.width,
        height: Get.size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    Get.to(const Searching(),
                        fullscreenDialog: true,
                        transition: Transition.rightToLeft,
                        duration: const Duration(milliseconds: 600));
                  },
                  child: Container(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            FluentSystemIcons.ic_fluent_search_regular,
                            color: Colors.black,
                            size: 15,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Text(
                            "Search",
                            style: Stylings.subTitles.copyWith(fontSize: 12),
                          ),
                          const Expanded(child: SizedBox()),
                          const Icon(
                            FluentSystemIcons.ic_fluent_settings_dev_regular,
                            color: Colors.black,
                            size: 17,
                          ),
                        ],
                      )),
                )),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: (){
                    showModalBottomSheet(context: context,
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
                  },
                  child: Container(
                    width: 17,
                    height: 17,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      "${Stylings.imgPath}/locicon.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    evBiz.searchPage.value = "All";
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: Get.height*0.035,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        color: evBiz.searchPage.value == "All"
                            ? Stylings.orange
                            : Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      "All",
                      style: Stylings.titles.copyWith(
                          fontSize: 12,
                          color: evBiz.searchPage.value == "All"
                              ? Colors.white
                              : Colors.black),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    evBiz.searchPage.value = "UC";
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: Get.height*0.035,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        color: evBiz.searchPage.value == "UC"
                            ? Stylings.orange
                            : Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      "Upcoming event",
                      style: Stylings.titles.copyWith(
                          fontSize: 12,
                          color: evBiz.searchPage.value == "UC"
                              ? Colors.white
                              : Colors.black),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    evBiz.searchPage.value = "P";
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: Get.height*0.035,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        color: evBiz.searchPage.value == "P"
                            ? Stylings.orange
                            : Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      "Past event",
                      style: Stylings.titles.copyWith(
                          fontSize: 12,
                          color: evBiz.searchPage.value == "P"
                              ? Colors.white
                              : Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            evBiz.searchPage.value=="All"?Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      color: Stylings.bgColor,
                      height: Get.size.height * 0.05,
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
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      color: Stylings.bgColor,
                      height: Get.size.height * 0.05,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Upcoming event",
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
              ),
            ):evBiz.searchPage.value=="UC"?Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...Clubon.tonight.map((uC){
                      final eventPosterPfp = uC['pfp'];
                      final eventPosterUsername = uC['username'];
                      final eventBanner = uC['imgUrl'];
                      final eventComments = uC['comments'];
                      final eventLikes = uC['likes'];
                      final eventTitle = uC['title'];
                      final eventDate = uC['date'];
                      final eventLocation = uC['location'];
                      final eventPrice = uC['price'];
                      return Eventcard(
                        imgUrl: eventBanner,
                        comments: eventComments,
                        likes: eventLikes,
                        title: eventTitle,
                        date: eventDate,
                        location: eventLocation,
                        price: eventPrice,
                        pfp: eventPosterPfp,
                        username: eventPosterUsername, theEvent: uC,
                      );
                    }),
                  ],
                ),
              ),
            ):Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...Clubon.past.map((uC){
                  return Receventscard(imgUrl: uC['imgUrl'], title: uC['title'], date: uC['date'], pfp: uC['pfp'], username: uC['username'],isFull: true,);
                }),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    ));
  }
}
