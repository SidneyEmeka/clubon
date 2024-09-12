import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../styles/stylings.dart';

class Friendtile extends StatelessWidget {
  final String imgUrl;
  final String name;
  final String username;
  final IconData iP;
  final String action;
  final IconData iC;
  const Friendtile({super.key, required this.imgUrl, required this.name, required this.username, required this.iP, required this.action, required this.iC});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15),
      width: Get.size.width,
      height: Get.size.height*0.1,
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: Colors.grey.shade100,
                  width: 1.5
              )
          ),
        color: Colors.white,
      ),

      child:  Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              imgUrl,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10),
          Container(
            width: Get.size.width*0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  overflow: TextOverflow.ellipsis,
                  name,
                  style: Stylings.titles.copyWith(fontSize: 12),
                ),
                Text(
                  overflow: TextOverflow.ellipsis,
                  "@$username",
                  style: Stylings.subTitles
                      .copyWith(fontSize: 12, color: Colors.black54),
                )
              ],
            ),
          ),
          const Expanded(child: SizedBox()),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
          //  width: Get.size.width*0.25,
            height: 33,
            decoration: BoxDecoration(
              color: Stylings.bgColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(iP,color: Colors.black, size: 20,),
                const SizedBox(width: 7),
                Text(action,style: Stylings.titles.copyWith(fontSize: 12),)
              ],
            ),
          ),
          IconButton(onPressed:(){}, icon: Icon(iC,color: Colors.black54, size: 20,))
        ],
      ),
    );
  }
}
