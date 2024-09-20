import 'package:clubon/getxserver/businesslogic.dart';
import 'package:clubon/homepage.dart';
import 'package:clubon/utils/reusables/layoutcalc.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../data/constantdata.dart';
import '../utils/styles/stylings.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  var filBbiz = Businness();
  var whenDate = "Select date";
  Future<void> _whenD() async {
    DateTime? _picked = await showDatePicker(
      initialEntryMode: DatePickerEntryMode.calendarOnly,
        builder: (context, child)=> Theme(
            data: ThemeData().copyWith(
              colorScheme: ColorScheme.light(
                primary: Stylings.orange,
              ),
            ),
            child: child!),
        context: context,initialDate: DateTime.now(), firstDate: DateTime.now(), lastDate: DateTime(2025));
    if(_picked!=null){
      setState(() {
        whenDate = _picked.toString().split(" ")[0];
      });
    }
  }
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
        title: Text("Filter",style: Stylings.titles.copyWith(fontSize: 12),),
        centerTitle: true,
      ),
      body: Obx(()=>Container(
        width: Get.width,
        height: Get.height,
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20,),
        child: ListView(
          children: [
            Text("Location",style: Stylings.titles.copyWith(fontSize: 11),),
            GestureDetector(
              onTap: (){
                showModalBottomSheet(context: context,
                    isScrollControlled: true,
                    backgroundColor: Colors.white,
                    enableDrag: true,
                    showDragHandle: true,
                    builder: (_){
                      return Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        width: Get.width,
                        height: Get.height*0.6,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width*0.85,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.black12.withOpacity(0.04),
                                      border: Border.all(color: Colors.white)),
                                  child: TextFormField(
                                    cursorHeight: 20,
                                    cursorColor: Colors.grey.shade500,
                                    decoration: InputDecoration(
                                        contentPadding: const EdgeInsets.only(left: 20),
                                        hintText: "Search your city",
                                        hintStyle: Stylings.subTitles.copyWith(fontSize: 12),
                                        border: InputBorder.none),
                                  ),
                                ),
                                Expanded(child: GestureDetector(
                                  onTap: (){
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    width: 25,
                                    height: 25,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                      color: Colors.black,
                                      "${Stylings.imgPath}/bad.png",
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ))
                              ],
                            ),
                            const SizedBox(height: 20,),
                            Container(
                              child: Expanded(
                                child: ListView(
                                  children: [
                                    //Florida
                                    GestureDetector(
                                      onTap: (){
                                        Get.find<Businness>().location.value = "Florida";
                                        Get.back();
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 20, top: 2,bottom: 10),
                                        child: Text("Florida",style: Stylings.titles.copyWith(fontSize: 12),),
                                      ),
                                    ),
                                    Divider(color: Colors.black12.withOpacity(0.05), height: 2,),
                                    ...Clubon.florida.map((aFcity){
                                      return GestureDetector(
                                        onTap: (){
                                          Get.find<Businness>().location.value = aFcity;
                                          Get.back();
                                          },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  bottom: BorderSide(
                                                    width: 2,
                                                    color: Colors.black12.withOpacity(0.05),
                                                  )
                                              )
                                          ),
                                          width: MediaQuery.of(context).size.width,
                                          child: Text(aFcity,style: Stylings.subTitles.copyWith(fontSize: 11),),
                                        ),
                                      );
                                    }),
                                    //Canada
                                    GestureDetector(
                                      onTap: (){
                                        Get.find<Businness>().location.value = "Canada";
                                        Get.back();
                                          },
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 20, top: 20,bottom: 10),
                                        child: Text("Canada",style: Stylings.titles.copyWith(fontSize: 12),),
                                      ),
                                    ),
                                    Divider(color: Colors.black12.withOpacity(0.05), height: 2,),
                                    ...Clubon.canada.map((aFcity){
                                      return GestureDetector(
                                        onTap: (){
                                          Get.find<Businness>().location.value = aFcity;
                                          Get.back();
                                            },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  bottom: BorderSide(
                                                    width: 2,
                                                    color: Colors.black12.withOpacity(0.05),
                                                  )
                                              )
                                          ),
                                          width: MediaQuery.of(context).size.width,
                                          child: Text(aFcity,style: Stylings.subTitles.copyWith(fontSize: 11),),
                                        ),
                                      );
                                    }),
                                    //Andorra
                                    GestureDetector(
                                      onTap: (){
                                        Get.find<Businness>().location.value = "Andorra";
                                        Get.back();
                                         },
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 20, top: 20,bottom: 10),
                                        child: Text("Andorra",style: Stylings.titles.copyWith(fontSize: 12),),
                                      ),
                                    ),
                                    Divider(color: Colors.black12.withOpacity(0.05), height: 2,),
                                    ...Clubon.andorra.map((aFcity){
                                      return GestureDetector(
                                        onTap: (){
                                          Get.find<Businness>().location.value = aFcity;
                                          Get.back();
                                          },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 13),
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  bottom: BorderSide(
                                                    width: 2,
                                                    color: Colors.black12.withOpacity(0.05),
                                                  )
                                              )
                                          ),
                                          width: MediaQuery.of(context).size.width,
                                          child: Text(aFcity,style: Stylings.subTitles.copyWith(fontSize: 11),),
                                        ),
                                      );
                                    }),
                                    //Austria
                                    GestureDetector(
                                      onTap: (){
                                        Get.find<Businness>().location.value = "Austria";
                                        Get.back();
                                        },
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 20, top: 20,bottom: 10),
                                        child: Text("Austria",style: Stylings.titles.copyWith(fontSize: 12),),
                                      ),
                                    ),
                                    Divider(color: Colors.black12.withOpacity(0.05), height: 2,),
                                    ...Clubon.austria.map((aFcity){
                                      return GestureDetector(
                                        onTap: (){
                                          Get.find<Businness>().location.value = aFcity;
                                          Get.back();
                                            },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  bottom: BorderSide(
                                                    width: 2,
                                                    color: Colors.black12.withOpacity(0.05),
                                                  )
                                              )
                                          ),
                                          width: MediaQuery.of(context).size.width,
                                          child: Text(aFcity,style: Stylings.subTitles.copyWith(fontSize: 11),),
                                        ),
                                      );
                                    }),
                                    //Belgium
                                    GestureDetector(
                                      onTap: (){
                                        Get.find<Businness>().location.value = "Belguim";
                                        Get.back();
                                          },
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 20, top: 20, bottom: 10),
                                        child: Text("Belgium",style: Stylings.titles.copyWith(fontSize: 12),),
                                      ),
                                    ),
                                    Divider(color: Colors.black12.withOpacity(0.05), height: 2,),
                                    ...Clubon.belguim.map((aFcity){
                                      return GestureDetector(
                                        onTap: (){
                                          Get.find<Businness>().location.value = aFcity;
                                          Get.back();
                                          },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  bottom: BorderSide(
                                                    width: 2,
                                                    color: Colors.black12.withOpacity(0.05),
                                                  )
                                              )
                                          ),
                                          width: MediaQuery.of(context).size.width,
                                          child: Text(aFcity,style: Stylings.subTitles.copyWith(fontSize: 11),),
                                        ),
                                      );
                                    }),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    });
              },
              child: Container(
                  width: Get.width,
                  height: Get.height*0.06,
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey.shade200
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.location_on_outlined,color: Colors.black,size: 15,),
                      const SizedBox(width: 5),
                      Text(Get.find<Businness>().location.value,style: Stylings.subTitles.copyWith(fontSize: 12),),
                      const Expanded(child: SizedBox()),
                      const Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15,)
                    ],
                  )
              ),
            ),
            Text("When",style: Stylings.titles.copyWith(fontSize: 11),),
            GestureDetector(
              onTap: _whenD,
              child: Container(
                  width: Get.width,
                  height: Get.height*0.06,
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey.shade500)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(whenDate,style: Stylings.subTitles.copyWith(fontSize: 11),),
                      const Expanded(child: SizedBox()),
                      const Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15,)
                    ],
                  )
              ),
            ),
            const SizedBox(height: 10,),
            Text("Budget",style: Stylings.titles.copyWith(fontSize: 11),),
            Container(
              width: Get.width,
              height: 142,
              margin: const EdgeInsets.symmetric(vertical: 12),
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/range.png"),fit: BoxFit.cover)
              ),
            ),
            RangeSlider(
                activeColor: Stylings.orange,
                inactiveColor: Stylings.bgColor,
                min: filBbiz.min,
                max: filBbiz.max,
                values: filBbiz.theRange.value,
                divisions: 8,
                labels: RangeLabels(filBbiz.theRange.value.start.toString(),filBbiz.theRange.value.end.toString()),
                onChanged: (amount){
                  filBbiz.theRange.value = amount;
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: Get.width*0.4,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade500),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: TextField(
                    cursorHeight: 20,
                    style: Stylings.titles.copyWith(fontSize: 15),
                    cursorColor: Colors.grey.shade200,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "Enter minimum",
                      prefixText: '\$ ',
                      prefixStyle: Stylings.titles.copyWith(fontSize: 11),
                      labelStyle: Stylings.subTitles.copyWith(fontSize: 11)
                    ),
                  ),
                ),
               Icon(FluentSystemIcons.ic_fluent_arrows_bidirectional_filled,color: Stylings.orange,size: 15,),
                Container(
                  width: Get.width*0.4,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade500),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: TextField(
                    cursorHeight: 20,
                    style: Stylings.titles.copyWith(fontSize: 15),
                    cursorColor: Colors.grey.shade200,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: "Enter maximum",
                        prefixText: '\$ ',
                        prefixStyle: Stylings.titles.copyWith(fontSize: 11),
                        labelStyle: Stylings.subTitles.copyWith(fontSize: 11)
                    ),
                  ),
                ),
              ],
            ),
           const SizedBox(height: 20),
           Container(
             width: Get.width,
             height: 50,
             alignment: Alignment.center,
             decoration: BoxDecoration(
               borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
               border: Border(
                 top: BorderSide(color: Colors.grey.shade200),
                 left: BorderSide(color: Colors.grey.shade200),
                 right: BorderSide(color: Colors.grey.shade200),
               )
             ),
             child: SwitchListTile(value: filBbiz.isFi.value,
                  activeColor:Colors.white,
                  splashRadius: 2,
                  activeTrackColor: Stylings.orange,
                  isThreeLine: false,
                  trackOutlineColor: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
                    return Colors.transparent; // Use the default color.
                  }),
                  inactiveTrackColor: Colors.grey.shade300,
                  inactiveThumbColor: Colors.white,
                  onChanged: (value){
                  filBbiz.isFi.value = !filBbiz.isFi.value;
                  },
                  title: Text("Tonight",style: Stylings.titles.copyWith(fontSize: 11),),
              ),
           ),
            ...filBbiz.otherFilters.map((m){
              return Container(
                width: Get.width,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200)
                ),
                child: SwitchListTile(
                  value: m['isF'],
                  activeColor:Colors.white,
                  splashRadius: 2,
                  activeTrackColor: Stylings.orange,
                  isThreeLine: false,
                  trackOutlineColor: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
                    return Colors.transparent; // Use the default color.
                  }),
                  inactiveTrackColor: Colors.grey.shade300,   
                  inactiveThumbColor: Colors.white,
                  onChanged: (value){
                    m['isF'] = !m['isF'];
                  },
                  title: Text(m['title'],style: Stylings.titles.copyWith(fontSize: 11),),
                ),
              );
            }),
            Container(
              width: Get.width,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade200),
                    left: BorderSide(color: Colors.grey.shade200),
                    right: BorderSide(color: Colors.grey.shade200),
                  )
              ),
              child: SwitchListTile(value: filBbiz.isFo.value,
                activeColor:Colors.white,
                splashRadius: 2,
                activeTrackColor: Stylings.orange,
                isThreeLine: false,
                trackOutlineColor: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
                  return Colors.transparent; // Use the default color.
                }),
                inactiveTrackColor: Colors.grey.shade300,
                inactiveThumbColor: Colors.white,
                onChanged: (value){
                  filBbiz.isFo.value = !filBbiz.isFo.value;
                },
                title: Text("Top shows",style: Stylings.titles.copyWith(fontSize: 11),),
              ),
            ),
            const SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      Get.back();
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: Get.height*0.055,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(7)
                      ),
                      child: Text("Cancel",style: Stylings.titles.copyWith(fontSize: 11),)
                    ),
                  ),
                ),
                const SizedBox(width: 15,),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      Get.to(()=>const Homepage());
                    },
                    child: Container(
                         alignment: Alignment.center,
                         height: Get.height*0.055,     decoration: BoxDecoration(
                            color: Stylings.orange,
                            borderRadius: BorderRadius.circular(7)
                        ),
                        child: Text("Show",style: Stylings.titles.copyWith(fontSize: 11,color: Colors.white),)
                    ),
                  ),
                ),
              ],
            ),
           ],
        ),
      ),)
    );
  }
}
