import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/styles/stylings.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isInfluencer = false;
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
        title: Text("Settings",style: Stylings.titles.copyWith(fontSize: 12),),
        centerTitle: true,
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        child: ListView(
          children: [
            Text("Become an influencer",style: Stylings.titles.copyWith(fontSize: 12),),
            const SizedBox(height: 10,),
            Text("You can earn up to \$30,000 every month when you become an influencer",textAlign: TextAlign.start,style: Stylings.subTitles.copyWith(fontSize: 11,color: Colors.grey.shade600),),
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
                value: isInfluencer,
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
                  isInfluencer=value;
                  });
                  print(isInfluencer);
                },
                title: Text("Become an influencer",style: Stylings.titles.copyWith(fontSize: 12),),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey.shade100))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.person_outline_sharp,size: 18,color: Colors.black,),
                  const SizedBox(width: 5,),
                  Text("My details",style: Stylings.titles.copyWith(fontSize: 12),),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey.shade100))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.privacy_tip_outlined,size: 18,color: Colors.black,),
                  const SizedBox(width: 5,),
                  Text("Privacy",style: Stylings.titles.copyWith(fontSize: 12),),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey.shade100))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.star_outline_sharp,size: 18,color: Colors.black,),
                  const SizedBox(width: 5,),
                  Text("Rate the app",style: Stylings.titles.copyWith(fontSize: 12),),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey.shade100))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.notifications_none_outlined,size: 18,color: Colors.black,),
                  const SizedBox(width: 5,),
                  Text("Notifications",style: Stylings.titles.copyWith(fontSize: 12),),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey.shade100))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.location_on_outlined,size: 18,color: Colors.black,),
                  const SizedBox(width: 5,),
                  Text("Address",style: Stylings.titles.copyWith(fontSize: 12),),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey.shade100))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.ios_share_sharp,size: 18,color: Colors.black,),
                  const SizedBox(width: 5,),
                  Text("Share the app",style: Stylings.titles.copyWith(fontSize: 12),),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey.shade100))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.support_agent_rounded,size: 18,color: Colors.black,),
                  const SizedBox(width: 5,),
                  Text("Give us feedback",style: Stylings.titles.copyWith(fontSize: 12),),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey.shade100))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.padding_outlined,size: 18,color: Colors.black,),
                  const SizedBox(width: 5,),
                  Text("Terms and conditions",style: Stylings.titles.copyWith(fontSize: 12),),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey.shade100))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.delete_forever_outlined,size: 18,color: Colors.black,),
                  const SizedBox(width: 5,),
                  Text("Clear caches",style: Stylings.titles.copyWith(fontSize: 12),),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey.shade100))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.help_outline_outlined,size: 18,color: Colors.black,),
                  const SizedBox(width: 5,),
                  Text("Support",style: Stylings.titles.copyWith(fontSize: 12),),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey.shade100))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.logout,size: 18,color: Colors.black,),
                  const SizedBox(width: 5,),
                  Text("Log out",style: Stylings.titles.copyWith(fontSize: 12),),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.person_off_outlined,size: 18,color: Colors.black,),
                  const SizedBox(width: 5,),
                  Text("Delete account",style: Stylings.titles.copyWith(fontSize: 12),),
                ],
              ),
            ),
            const SizedBox(height: 40,)
          ],
        ),
      ),
    );
  }
}