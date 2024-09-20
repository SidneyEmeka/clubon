import 'package:clubon/getxserver/businesslogic.dart';
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

  bool push1 = false;
  bool push2 = false;
  bool email2 = false;
  bool push3 = false;
  bool email3 = false;
  bool push4 = false;
  bool email4 = false;
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
            size: 17,
          ),
        ),
        title:  widget.which=="pri"?Text("Privacy",style: Stylings.titles.copyWith(fontSize: 12),):Text("Notifications",style: Stylings.titles.copyWith(fontSize: 12),),
        centerTitle: true,
      ),
      body:  Container(
        height: Get.height,
        width: Get.width,
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
        child: widget.which=="pri"?Obx(()=>ListView(
         children: [
            Text("Connection settings",style: Stylings.titles.copyWith(fontSize: 11),),
            const SizedBox(height: 8,),
            Text("Let friends know what you're interested in. Share the events you,ve saved and booked",style: Stylings.subTitles.copyWith(fontSize: 10,color: Colors.grey.shade500),),
            const SizedBox(height: 10,),
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
                title: Text("Become an influencer",style: Stylings.titles.copyWith(fontSize: 11),),
              ),
            ),
            const SizedBox(height: 20,),
            Text("What you're sharing",style: Stylings.titles.copyWith(fontSize: 11),),
            const SizedBox(height: 10,),
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
                      const Icon(Icons.lock,size: 12,color: Colors.black,),
                      const SizedBox(width: 5,),
                      Text("Make me private",style: Stylings.titles.copyWith(fontSize: 11),),
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
                            Icon(aT['icon'],size: 12,color: Colors.black,),
                            const SizedBox(width: 5,),
                            Text(aT['title'],style: Stylings.titles.copyWith(fontSize: 11),),
                          ],
                        ),
                      ),
                    ),
                  );
                })
              ],
            ):Column(
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
                      value: false,
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
                      },
                      subtitle:Text(aT['sub'],style: Stylings.subTitles.copyWith(fontSize: 10,color: Colors.grey.shade500),),
                      title: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(aT['icon'],size: 12,color: Colors.grey.shade500,),
                            const SizedBox(width: 5,),
                            Text(aT['title'],style: Stylings.titles.copyWith(fontSize: 11,color: Colors.grey.shade500),),
                          ],
                        ),
                      ),
                    ),
                  );
                })
              ],
            ),
            const Expanded(flex:2,child: SizedBox())
          ],
        )):ListView(
          children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Changes to your event",style: Stylings.titles.copyWith(fontSize: 11),),
              const SizedBox(height: 5,),
              Text("Update to shows you're going to - like the time or lineup",style: Stylings.subTitles.copyWith(fontSize: 10,color: Colors.grey.shade600),),
              const SizedBox(height: 5,),
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
                  value: push1,
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
                      push1=value;
                    });
                  },
                  title: Text("Push notifications",style: Stylings.titles.copyWith(fontSize: 11),),
                ),
              ),
            ],
          ),
            const SizedBox(height: 20,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Recommendations and news from Clubon",style: Stylings.titles.copyWith(fontSize: 11),),
                const SizedBox(height: 5,),
                Text("Update to shows you're going to - like the time or lineup",style: Stylings.subTitles.copyWith(fontSize: 10,color: Colors.grey.shade600),),
                const SizedBox(height: 15,),
                Container(
                  width: Get.width,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Colors.grey.shade200),
                  ),
                  child: SwitchListTile(
                    value: push2,
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
                        push2=value;
                      });
                    },
                    title: Text("Push notifications",style: Stylings.titles.copyWith(fontSize: 11),),
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  width: Get.width,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Colors.grey.shade200),
                  ),
                  child: SwitchListTile(
                    value: email2,
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
                        email2=value;
                      });
                    },
                    title: Text("Email",style: Stylings.titles.copyWith(fontSize: 11),),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Updates from your connections",style: Stylings.titles.copyWith(fontSize: 11),),
                const SizedBox(height: 5,),
                Text("Invites and shows your friends are interested in",style: Stylings.subTitles.copyWith(fontSize: 10,color: Colors.grey.shade600),),
                const SizedBox(height: 15,),
                Container(
                  width: Get.width,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Colors.grey.shade200),
                  ),
                  child: SwitchListTile(
                    value: push3,
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
                        push3=value;
                      });
                    },
                    title: Text("Push notifications",style: Stylings.titles.copyWith(fontSize: 11),),
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  width: Get.width,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Colors.grey.shade200),
                  ),
                  child: SwitchListTile(
                    value: email3,
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
                        email3=value;
                      });
                    },
                    title: Text("Email",style: Stylings.titles.copyWith(fontSize: 11),),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Updates from your connections",style: Stylings.titles.copyWith(fontSize: 11),),
                const SizedBox(height: 5,),
                Text("Invites and shows your friends are interested in",style: Stylings.subTitles.copyWith(fontSize: 10,color: Colors.grey.shade600),),
                const SizedBox(height: 15,),
                Container(
                  width: Get.width,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Colors.grey.shade200),
                  ),
                  child: SwitchListTile(
                    value: push4,
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
                        push4=value;
                      });
                    },
                    title: Text("Push notifications",style: Stylings.titles.copyWith(fontSize: 11),),
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  width: Get.width,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Colors.grey.shade200),
                  ),
                  child: SwitchListTile(
                    value: email4,
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
                        email4=value;
                      });
                    },
                    title: Text("Email",style: Stylings.titles.copyWith(fontSize: 11),),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
