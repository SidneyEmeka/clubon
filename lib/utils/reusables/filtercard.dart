import 'package:flutter/material.dart';

import '../styles/stylings.dart';

class Filtercard extends StatelessWidget {
  final String title;
  final String imgUrl;
  final String selected;
  const Filtercard({super.key, required this.title, required this.imgUrl, required this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: title=="Popular"?24:26,
            height: title=="Popular"?23:26,
            decoration: const BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
            ),
            child: Image.asset(imgUrl, fit: BoxFit.contain,),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5.0,top: 3),
            child: Text(title, style: Stylings.titles.copyWith(fontSize: 12),),
          ),
          selected==title?
          Container(
            width: 45,
            decoration: BoxDecoration(
                color: Stylings.orange,
              borderRadius: BorderRadius.circular(3)
            ),

            height: 3,
          ) :Container()
        ],
      ),
    );
  }
}
