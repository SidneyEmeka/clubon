import 'package:clubon/getxserver/businesslogic.dart';
import 'package:clubon/utils/reusables/friendtile.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/styles/stylings.dart';
class Frfopreviewpage extends StatelessWidget {
  const Frfopreviewpage({super.key});

  @override
  Widget build(BuildContext context) {
    var frfobiz = Businness();
    return Scaffold(
      appBar: AppBar(
        shape: Border(
          bottom: BorderSide(
            color: Colors.grey.shade100
          )
        ),
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            FluentSystemIcons.ic_fluent_ios_arrow_left_filled,
            size: 17,
            color: Colors.black,
          ),
        ),
        title: Text(
          Get.arguments,
          style: Stylings.titles.copyWith(fontSize: 11),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15.0,bottom: 6),
            child: Icon(CupertinoIcons.search, color: Colors.black26,size: 23,),
          )
        ],
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:  Get.arguments.toString().contains("Following")?Center(child: Text("You are not following anyone",style: Stylings.titles.copyWith(fontSize: 11,color: Colors.black26),),):Get.arguments.toString().contains("Followers")?Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ...frfobiz.people.reversed.map((aFrfo){
                return Friendtile(imgUrl: aFrfo['imgUrl'].toString(), name: aFrfo['name'].toString(), username: aFrfo['username'].toString(), iP: Icons.person_outline_sharp, action: "Remove", iC: Icons.more_horiz);
              })
            ],
          ):Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
          ...frfobiz.people.take(5).map((aFrfo){
            return Friendtile(imgUrl: aFrfo['imgUrl'].toString(), name: aFrfo['name'].toString(), username: aFrfo['username'].toString(), iP: Icons.person_outline_sharp, action: "Remove", iC: Icons.more_horiz);
          })
            ],
          ),
        ),
      ),
    );
  }
}
