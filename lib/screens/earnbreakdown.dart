import 'package:clubon/data/constantdata.dart';
import 'package:clubon/utils/reusables/donationtile.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/styles/stylings.dart';

class Earnbreakdown extends StatelessWidget {
  final String title;
  final String total;
  final String coins;
  const Earnbreakdown({super.key, required this.title, required this.total, required this.coins});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        shape: Border(
            bottom: BorderSide(
                color: Colors.grey.shade100
            )
        ),
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20,
          ),
        ),
        title: Text(title,style: Stylings.titles.copyWith(fontSize: 12),),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        width: Get.width,
        height: Get.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(title=='Last payout'?"Total payout":"Total Amount you have earned", style: Stylings.titles.copyWith(fontSize: 11),),
            const SizedBox(height: 4,),
            Text("\$$total", style: Stylings.titles.copyWith(fontSize: 25),),
            const SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(FluentSystemIcons.ic_fluent_bank_filled,size: 12,color: Colors.orangeAccent,),
                const SizedBox(width: 8,),
                Text(coins, style: Stylings.titles.copyWith(fontSize: 10),),
              ],
            ),
            title=='Last payout'?
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0,vertical: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('This year', style: Stylings.titles.copyWith(fontSize: 12),),
                      const SizedBox(height:5),
                      ...Clubon.donations.take(4).map((aDon){
                        return aDon['id']==1?Donationtile(isTop: 1, imgUrl: aDon['imgUrl'], username: aDon['username'], total: aDon['total'], gave: aDon['gave'],):aDon['id']==4?Donationtile(isTop: 3,imgUrl: aDon['imgUrl'], username: aDon['username'], total: aDon['total'], gave: aDon['gave'],):Donationtile(imgUrl: aDon['imgUrl'], username: aDon['username'], total: aDon['total'], gave: aDon['gave'],);
                      }),
                      const SizedBox(height:15),
                      Text('2023', style: Stylings.titles.copyWith(fontSize: 12),),
                      const SizedBox(height:5),
                      ...Clubon.donations.reversed.take(6).map((aDon){
                        return aDon['id']==1?Donationtile(isTop: 1, imgUrl: aDon['imgUrl'], username: aDon['username'], total: aDon['total'], gave: aDon['gave'],):aDon['id']==4?Donationtile(isTop: 3,imgUrl: aDon['imgUrl'], username: aDon['username'], total: aDon['total'], gave: aDon['gave'],):Donationtile(imgUrl: aDon['imgUrl'], username: aDon['username'], total: aDon['total'], gave: aDon['gave'],);
                      }),
                    ],
                  ),
                ),
              ),
            ):
            title=='This month'?
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0,vertical: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Today', style: Stylings.titles.copyWith(fontSize: 12),),
                      const SizedBox(height:5),
                      ...Clubon.donations.take(1).map((aDon){
                        return aDon['id']==1?Donationtile(isTop: 1, imgUrl: aDon['imgUrl'], username: aDon['username'], total: aDon['total'], gave: aDon['gave'],):aDon['id']==4?Donationtile(isTop: 3,imgUrl: aDon['imgUrl'], username: aDon['username'], total: aDon['total'], gave: aDon['gave'],):Donationtile(imgUrl: aDon['imgUrl'], username: aDon['username'], total: aDon['total'], gave: aDon['gave'],);
                      }),
                      const SizedBox(height:15),
                      Text('last week', style: Stylings.titles.copyWith(fontSize: 12),),
                      const SizedBox(height:5),
                      ...Clubon.donations.reversed.take(7).map((aDon){
                        return aDon['id']==1?Donationtile(isTop: 1, imgUrl: aDon['imgUrl'], username: aDon['username'], total: aDon['total'], gave: aDon['gave'],):aDon['id']==4?Donationtile(isTop: 3,imgUrl: aDon['imgUrl'], username: aDon['username'], total: aDon['total'], gave: aDon['gave'],):Donationtile(imgUrl: aDon['imgUrl'], username: aDon['username'], total: aDon['total'], gave: aDon['gave'],);
                      }),
                      const SizedBox(height:15),
                      Text('September 6', style: Stylings.titles.copyWith(fontSize: 12),),
                      const SizedBox(height:5),
                      ...Clubon.donations.take(3).map((aDon){
                        return aDon['id']==1?Donationtile(isTop: 1, imgUrl: aDon['imgUrl'], username: aDon['username'], total: aDon['total'], gave: aDon['gave'],):aDon['id']==4?Donationtile(isTop: 3,imgUrl: aDon['imgUrl'], username: aDon['username'], total: aDon['total'], gave: aDon['gave'],):Donationtile(imgUrl: aDon['imgUrl'], username: aDon['username'], total: aDon['total'], gave: aDon['gave'],);
                      }),

                    ],
                  ),
                ),
              ),
            ):
            title=='This week'?
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0,vertical: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Today', style: Stylings.titles.copyWith(fontSize: 12),),
                      const SizedBox(height:5),
                      ...Clubon.donations.reversed.take(6).map((aDon){
                        return aDon['id']==1?Donationtile(isTop: 1, imgUrl: aDon['imgUrl'], username: aDon['username'], total: aDon['total'], gave: aDon['gave'],):aDon['id']==4?Donationtile(isTop: 3,imgUrl: aDon['imgUrl'], username: aDon['username'], total: aDon['total'], gave: aDon['gave'],):Donationtile(imgUrl: aDon['imgUrl'], username: aDon['username'], total: aDon['total'], gave: aDon['gave'],);
                      }),
                      const SizedBox(height:15),
                      Text('Tuesday', style: Stylings.titles.copyWith(fontSize: 12),),
                      const SizedBox(height:5),
                      ...Clubon.donations.reversed.take(1).map((aDon){
                        return aDon['id']==1?Donationtile(isTop: 1, imgUrl: aDon['imgUrl'], username: aDon['username'], total: aDon['total'], gave: aDon['gave'],):aDon['id']==4?Donationtile(isTop: 3,imgUrl: aDon['imgUrl'], username: aDon['username'], total: aDon['total'], gave: aDon['gave'],):Donationtile(imgUrl: aDon['imgUrl'], username: aDon['username'], total: aDon['total'], gave: aDon['gave'],);
                      }),
                      const SizedBox(height:15),
                      Text('Sunday', style: Stylings.titles.copyWith(fontSize: 12),),
                      const SizedBox(height:5),
                      ...Clubon.donations.take(4).map((aDon){
                        return aDon['id']==1?Donationtile(isTop: 1, imgUrl: aDon['imgUrl'], username: aDon['username'], total: aDon['total'], gave: aDon['gave'],):aDon['id']==4?Donationtile(isTop: 3,imgUrl: aDon['imgUrl'], username: aDon['username'], total: aDon['total'], gave: aDon['gave'],):Donationtile(imgUrl: aDon['imgUrl'], username: aDon['username'], total: aDon['total'], gave: aDon['gave'],);
                      }),

                    ],
                  ),
                ),
              ),
            )
                : Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0,vertical: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height:5),
                      ...Clubon.donations.take(6).map((aDon){
                        return aDon['id']==1?Donationtile(isTop: 1, imgUrl: aDon['imgUrl'], username: aDon['username'], total: aDon['total'], gave: aDon['gave'],):aDon['id']==4?Donationtile(isTop: 3,imgUrl: aDon['imgUrl'], username: aDon['username'], total: aDon['total'], gave: aDon['gave'],):Donationtile(imgUrl: aDon['imgUrl'], username: aDon['username'], total: aDon['total'], gave: aDon['gave'],);
                      }),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
