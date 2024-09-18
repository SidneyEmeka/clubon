import 'package:clubon/data/constantdata.dart';
import 'package:clubon/getxserver/businesslogic.dart';
import 'package:clubon/homes/filter.dart';
import 'package:clubon/homes/live.dart';
import 'package:clubon/homes/settings.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../styles/stylings.dart';

class Locheader extends StatelessWidget {
  final bool isHome;
  const Locheader({super.key, this.isHome=false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      width: size.width,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          //location
          GestureDetector(
            onTap: (){
              Get.to(()=> const Filter());
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset("${Stylings.imgPath}/locicon.png", fit: BoxFit.contain,),
                ),
               Container(
                 margin: const EdgeInsets.only(left: 10),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Obx(()=> Text(Get.find<Businness>().location.value, style: Stylings.subTitles.copyWith(fontSize: 13),),),
                     const SizedBox(width: 2),
                     Container(
                       width: 13,
                       height: 13,
                       decoration: const BoxDecoration(
                         color: Colors.transparent,
                         shape: BoxShape.circle,
                       ),
                       child: Image.asset("${Stylings.imgPath}/ddownd.png", fit: BoxFit.contain,),
                     ),
                   ],
                 ),
               ),
              ],
            ),
          ),
          //live
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  Get.to(()=> const Live());
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFFF6F6F6),
                    borderRadius: BorderRadius.circular(50)
                  ),
                  margin: const EdgeInsets.only(right: 15),
                  padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_record_regular, color: Stylings.orange, size: 15,),
                      const SizedBox(width: 5,),
                      Text("Live", style: Stylings.titles.copyWith(fontSize: 14),)
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Get.to(()=>const Settings());
                },
                child: Container(
                  width: 14,
                  height: 14,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset("${Stylings.imgPath}/filterd.png", fit: BoxFit.contain,),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
