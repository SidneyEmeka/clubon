import 'package:clubon/data/constantdata.dart';
import 'package:clubon/getxserver/businesslogic.dart';
import 'package:clubon/homes/filter.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../styles/stylings.dart';

class Locheader extends StatefulWidget {
  const Locheader({super.key});

  @override
  State<Locheader> createState() => _LocheaderState();
}

class _LocheaderState extends State<Locheader> {

  String location = "Miami";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      width: size.width,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //location
          GestureDetector(
            onTap: (){
              showModalBottomSheet(context: context,
                  backgroundColor: Colors.white,
                  builder: (_){
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 30),
                          child: Row(
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
                                  decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.only(left: 20),
                                      hintText: "Search your city",
                                      hintStyle: Stylings.titles.copyWith(fontSize: 12),
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
                        ),
                        Container(
                          child: Expanded(
                            child: ListView(
                              children: [
                                //Florida
                                Padding(
                                  padding:
                                  const EdgeInsets.only(left: 20, top: 2, bottom: 10),
                                  child: Text(
                                    "Florida",
                                    style: Stylings.titles.copyWith(fontSize: 15),
                                  ),
                                ),
                                Divider(
                                  color: Colors.black12.withOpacity(0.05),
                                  height: 2,
                                ),
                                ...Clubon.florida.map((aFcity) {
                                  return GestureDetector(
                                    onTap: (){
                                      setState(() {
                                      location = aFcity;
                                      });
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 15),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                width: 2,
                                                color: Colors.black12.withOpacity(0.05),
                                              ))),
                                      width: MediaQuery.of(context).size.width,
                                      child: Text(
                                        aFcity,
                                        style: Stylings.subTitles.copyWith(fontSize: 13),
                                      ),
                                    ),
                                  );
                                }),
                                //Canada
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, top: 20, bottom: 10),
                                  child: Text(
                                    "Canada",
                                    style: Stylings.titles.copyWith(fontSize: 15),
                                  ),
                                ),
                                Divider(
                                  color: Colors.black12.withOpacity(0.05),
                                  height: 2,
                                ),
                                ...Clubon.canada.map((aFcity) {
                                  return GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        location = aFcity;
                                      });
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 15),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                width: 2,
                                                color: Colors.black12.withOpacity(0.05),
                                              ))),
                                      width: MediaQuery.of(context).size.width,
                                      child: Text(
                                        aFcity,
                                        style: Stylings.subTitles.copyWith(fontSize: 13),
                                      ),
                                    ),
                                  );
                                }),
                                //Andorra
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, top: 20, bottom: 10),
                                  child: Text(
                                    "Andorra",
                                    style: Stylings.titles.copyWith(fontSize: 15),
                                  ),
                                ),
                                Divider(
                                  color: Colors.black12.withOpacity(0.05),
                                  height: 2,
                                ),
                                ...Clubon.andorra.map((aFcity) {
                                  return GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        location = aFcity;
                                      });
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 13),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                width: 2,
                                                color: Colors.black12.withOpacity(0.05),
                                              ))),
                                      width: MediaQuery.of(context).size.width,
                                      child: Text(
                                        aFcity,
                                        style: Stylings.subTitles.copyWith(fontSize: 13),
                                      ),
                                    ),
                                  );
                                }),
                                //Austria
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, top: 20, bottom: 10),
                                  child: Text(
                                    "Austria",
                                    style: Stylings.titles.copyWith(fontSize: 15),
                                  ),
                                ),
                                Divider(
                                  color: Colors.black12.withOpacity(0.05),
                                  height: 2,
                                ),
                                ...Clubon.austria.map((aFcity) {
                                  return GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        location = aFcity;
                                      });
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 15),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                width: 2,
                                                color: Colors.black12.withOpacity(0.05),
                                              ))),
                                      width: MediaQuery.of(context).size.width,
                                      child: Text(
                                        aFcity,
                                        style: Stylings.subTitles.copyWith(fontSize: 13),
                                      ),
                                    ),
                                  );
                                }),
                                //Belgium
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, top: 20, bottom: 10),
                                  child: Text(
                                    "Belgium",
                                    style: Stylings.titles.copyWith(fontSize: 15),
                                  ),
                                ),
                                Divider(
                                  color: Colors.black12.withOpacity(0.05),
                                  height: 2,
                                ),
                                ...Clubon.belguim.map((aFcity) {
                                  return GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        location = aFcity;
                                      });
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 15),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                width: 2,
                                                color: Colors.black12.withOpacity(0.05),
                                              ))),
                                      width: MediaQuery.of(context).size.width,
                                      child: Text(
                                        aFcity,
                                        style: Stylings.subTitles.copyWith(fontSize: 13),
                                      ),
                                    ),
                                  );
                                }),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  });
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
                 margin: const EdgeInsets.only(left: 15),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Text(location, style: Stylings.subTitles.copyWith(fontSize: 15),),
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
              GestureDetector(
                onTap: (){
                  Get.to(()=> const Filter());
                },
                child: Container(
                  width: 15,
                  height: 15,
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
