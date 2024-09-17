import 'package:clubon/getxserver/businesslogic.dart';
import 'package:clubon/utils/reusables/toggletile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/styles/stylings.dart';

class Privandnotsettings extends StatefulWidget {
  final String which;
  const Privandnotsettings({super.key, required this.which});

  @override
  State<Privandnotsettings> createState() => _PrivandnotsettingsState();
}

class _PrivandnotsettingsState extends State<Privandnotsettings> {
  bool acceptNew = false;
  var privBiz = Businness();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30,
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
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
        title: Text("Privacy",style: Stylings.titles.copyWith(fontSize: 12),),
        centerTitle: true,
      ),
      body: Obx(()=> Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Connection settings",style: Stylings.titles.copyWith(fontSize: 12),),
            SizedBox(height: 10,),
            Text("Let friends know what you're interested in. Share the events you,ve saved and booked",style: Stylings.subTitles.copyWith(fontSize: 12,color: Colors.grey.shade500),),
            SizedBox(height: 10,),
            Container(
              width: Get.width,
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: SwitchListTile(
                value: acceptNew,
                activeColor:Colors.white,
                contentPadding: EdgeInsets.zero,
                splashRadius: 2,
                activeTrackColor: Stylings.orange,
                isThreeLine: false,
                trackOutlineColor: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
                  return Colors.transparent; // Use the default color.
                }),
                inactiveTrackColor: Colors.grey.shade300,
                inactiveThumbColor: Colors.white,
                onChanged: (value){
                  setState(() {
                    acceptNew = value;
                  });
                  print(acceptNew);
                },
                title: Text("Become an influencer",style: Stylings.titles.copyWith(fontSize: 12),),
              ),
            ),
            Expanded(flex:1,child: SizedBox()),
            Text("What you're sharing",style: Stylings.titles.copyWith(fontSize: 12),),
            SizedBox(height: 10,),
            Container(
              width: Get.width,
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                border: Border(top:BorderSide(color: Colors.grey.shade200)),
              ),
              child: SwitchListTile(
                value: privBiz.isPrivate.value,
                activeColor:Colors.white,
                contentPadding: EdgeInsets.zero,
                splashRadius: 2,
                activeTrackColor: Stylings.orange,
                isThreeLine: true,
                trackOutlineColor: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
                  return Colors.transparent; // Use the default color.
                }),
                inactiveTrackColor: Colors.grey.shade300,
                inactiveThumbColor: Colors.white,
                onChanged: (value){
                  privBiz.isPrivate.value=!privBiz.isPrivate.value;
                },
                subtitle:Text("Hide your account from everyone",style: Stylings.subTitles.copyWith(fontSize: 10,color: Colors.grey.shade500),),
                title: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.lock,size: 15,color: Colors.black,),
                      SizedBox(width: 5,),
                      Text("Make me private",style: Stylings.titles.copyWith(fontSize: 12),),
                    ],
                  ),
                ),
              ),
            ),
            privBiz.isPrivate.value==false?Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...privBiz.privacy.map((aT){
                  return Container(
                    width: Get.width,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    height: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      border: Border(top:BorderSide(color: Colors.grey.shade200)),
                    ),
                    child: SwitchListTile(
                      value: aT['isF'],
                      activeColor:Colors.white,
                      contentPadding: EdgeInsets.zero,
                      splashRadius: 2,
                      activeTrackColor: Stylings.orange,
                      isThreeLine: true,
                      trackOutlineColor: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
                        return Colors.transparent; // Use the default color.
                      }),
                      inactiveTrackColor: Colors.grey.shade300,
                      inactiveThumbColor: Colors.white,
                      onChanged: (value){
                        aT['isF']=!aT['isF'];
                      },
                      subtitle:Text(aT['sub'],style: Stylings.subTitles.copyWith(fontSize: 10,color: Colors.grey.shade500),),
                      title: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(aT['icon'],size: 15,color: Colors.black,),
                            SizedBox(width: 5,),
                            Text(aT['title'],style: Stylings.titles.copyWith(fontSize: 12),),
                          ],
                        ),
                      ),
                    ),
                  );
                })
              ],
            ):Container(),
            Expanded(flex:2,child: SizedBox())
          ],
        ),
      ),)
    );
  }
}
