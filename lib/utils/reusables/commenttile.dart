import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../styles/stylings.dart';

class Commenttile extends StatelessWidget {
  final String imgUrl;
  final String name;
  final String comm;
  const Commenttile({super.key, required this.imgUrl, required this.name, required this.comm});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width*0.6,
      margin: EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 35,
            height: 35,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              imgUrl,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 9),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,style: Stylings.titles.copyWith(fontSize: 12,color: Colors.white),),
              Container(
                  width: Get.width*0.4,
                  child: Text(comm,style: Stylings.subTitles.copyWith(fontSize: 10,color: Colors.white),)),
            ],
          )
        ],
      ),
    );
  }
}
