import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../styles/stylings.dart';


class Donationtile extends StatelessWidget {
  final int isTop;
  final String imgUrl;
  final String username;
  final String total;
  final String gave;
  const Donationtile({super.key, this.isTop=2, required this.imgUrl, required this.username, required this.total, required this.gave});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 13),
      width: Get.width,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: isTop==1?const BorderRadius.vertical(top: Radius.circular(5)):isTop==3?const BorderRadius.vertical(bottom: Radius.circular(5)):BorderRadius.zero
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
              image: DecorationImage(image: AssetImage(imgUrl),fit: BoxFit.cover)
            ),
          ),
          const SizedBox(width: 10,),
          SizedBox(
            width: Get.size.width*0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  overflow: TextOverflow.ellipsis,
                  "@$username",
                  style: Stylings.titles.copyWith(fontSize: 11),
                ),
                const SizedBox(height: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(FluentSystemIcons.ic_fluent_bank_filled,size: 10,color: Colors.orangeAccent,),
                    const SizedBox(width: 3,),
                    Text(total, style: Stylings.titles.copyWith(fontSize: 9),),
                  ],
                ),
              ],
            ),
          ),
          const Expanded(child: SizedBox()),
          Text("+\$$gave",style: Stylings.titles.copyWith(fontSize: 12),)
        ],
      ),
    );
  }
}
