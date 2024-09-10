import 'package:clubon/screens/searching.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/styles/stylings.dart';

class Friends extends StatefulWidget {
  const Friends({super.key});

  @override
  State<Friends> createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Stylings.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        leadingWidth: 100,
        leading:  Padding(
          padding: const EdgeInsets.only(left: 20.0,top: 20),
          child: Text("Friends",style: Stylings.titles.copyWith(fontSize: 15),),
        ),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 5.0,top: 5),
          child: IconButton(onPressed: (){Get.to(Searching());}, icon: Icon(Icons.search),color: Colors.black,iconSize: 20,),
        )],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //header
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
            height:Get.size.height*0.1,
            decoration: BoxDecoration(
                color: Colors.white,
              border: Border(
                top: BorderSide(
                  color: Colors.grey.shade200
                )
              )
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15,),
              decoration: BoxDecoration(
                  color: Stylings.bgColor,
                borderRadius: BorderRadius.circular(10)
              ),
              height: Get.size.height*0.05,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Stylings.orange
                    ),
                    child: Text("S",style: Stylings.titles.copyWith(fontSize: 12,color: Colors.white),)
                  ),
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Invite your friends to join Clubon",style: Stylings.titles.copyWith(fontSize: 12),),
                      Text("Clubon.com/Sidney",style: Stylings.subTitles.copyWith(fontSize: 12,color: Colors.black54),)

                    ],
                  ),
                  Expanded(child: SizedBox()),
                  IconButton(onPressed: (){}, icon: Icon(FluentSystemIcons.ic_fluent_share_ios_regular,color: Colors.black,size: 22,))
                  
                 ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 70,
       // color: Colors.transparent,
      ),
    );
  }
}
