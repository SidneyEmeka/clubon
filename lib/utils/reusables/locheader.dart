import 'package:clubon/data/constantdata.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import '../styles/stylings.dart';

class Locheader extends StatefulWidget {
  const Locheader({super.key});

  @override
  State<Locheader> createState() => _LocheaderState();
}

class _LocheaderState extends State<Locheader> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      width: size.width,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //location
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 20,
                height: 20,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                ),
                child: Image.asset("${Stylings.imgPath}/locicon.png", fit: BoxFit.contain,),
              ),
             Container(
               margin: const EdgeInsets.only(left: 15),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Text("Miami", style: Stylings.subTitles.copyWith(fontSize: 15),),
                   const SizedBox(width: 10,),
                   Container(
                     width: 15,
                     height: 15,
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
          //live
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xFFF6F6F6),
                  borderRadius: BorderRadius.circular(50)
                ),
                margin: const EdgeInsets.only(right: 15),
                padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 10),
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
              Container(
                width: 16,
                height: 16,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                ),
                child: Image.asset("${Stylings.imgPath}/filterd.png", fit: BoxFit.contain,),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
