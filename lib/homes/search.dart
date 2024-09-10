import 'package:clubon/screens/searching.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../data/constantdata.dart';
import '../utils/styles/stylings.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  Future _dispayBottomSheet() {
    return showModalBottomSheet(context: context,
        isScrollControlled: true,
        useSafeArea: true,
        backgroundColor: Colors.white,
        enableDrag: true,
        showDragHandle: true,
        builder: (_){
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                            contentPadding: EdgeInsets.only(left: 20),
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
              SizedBox(height: 20,),
              Container(
                child: Expanded(
                  child: ListView(
                    children: [
                      //Florida
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 2,bottom: 10),
                        child: Text("Florida",style: Stylings.titles.copyWith(fontSize: 15),),
                      ),
                      Divider(color: Colors.black12.withOpacity(0.05), height: 2,),
                      ...Clubon.florida.map((aFcity){
                        return Container(
                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                    width: 2,
                                    color: Colors.black12.withOpacity(0.05),
                                  )
                              )
                          ),
                          width: MediaQuery.of(context).size.width,
                          child: Text(aFcity,style: Stylings.subTitles.copyWith(fontSize: 13),),
                        );
                      }),
                      //Canada
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20,bottom: 10),
                        child: Text("Canada",style: Stylings.titles.copyWith(fontSize: 15),),
                      ),
                      Divider(color: Colors.black12.withOpacity(0.05), height: 2,),
                      ...Clubon.canada.map((aFcity){
                        return Container(
                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                    width: 2,
                                    color: Colors.black12.withOpacity(0.05),
                                  )
                              )
                          ),
                          width: MediaQuery.of(context).size.width,
                          child: Text(aFcity,style: Stylings.subTitles.copyWith(fontSize: 13),),
                        );
                      }),
                      //Andorra
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20,bottom: 10),
                        child: Text("Andorra",style: Stylings.titles.copyWith(fontSize: 15),),
                      ),
                      Divider(color: Colors.black12.withOpacity(0.05), height: 2,),
                      ...Clubon.andorra.map((aFcity){
                        return Container(
                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 13),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                    width: 2,
                                    color: Colors.black12.withOpacity(0.05),
                                  )
                              )
                          ),
                          width: MediaQuery.of(context).size.width,
                          child: Text(aFcity,style: Stylings.subTitles.copyWith(fontSize: 13),),
                        );
                      }),
                      //Austria
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20,bottom: 10),
                        child: Text("Austria",style: Stylings.titles.copyWith(fontSize: 15),),
                      ),
                      Divider(color: Colors.black12.withOpacity(0.05), height: 2,),
                      ...Clubon.austria.map((aFcity){
                        return Container(
                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                    width: 2,
                                    color: Colors.black12.withOpacity(0.05),
                                  )
                              )
                          ),
                          width: MediaQuery.of(context).size.width,
                          child: Text(aFcity,style: Stylings.subTitles.copyWith(fontSize: 13),),
                        );
                      }),
                      //Belgium
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20, bottom: 10),
                        child: Text("Belgium",style: Stylings.titles.copyWith(fontSize: 15),),
                      ),
                      Divider(color: Colors.black12.withOpacity(0.05), height: 2,),
                      ...Clubon.belguim.map((aFcity){
                        return Container(
                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                    width: 2,
                                    color: Colors.black12.withOpacity(0.05),
                                  )
                              )
                          ),
                          width: MediaQuery.of(context).size.width,
                          child: Text(aFcity,style: Stylings.subTitles.copyWith(fontSize: 13),),
                        );
                      }),
                    ],
                  ),
                ),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        width: Get.size.width,
        height: Get.size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: GestureDetector(
                  onTap: (){
                   // showSearch(context: context, delegate: CustomSearchDelegate());
                    Get.to(Searching(), fullscreenDialog: true, transition: Transition.rightToLeft, duration: Duration(seconds: 3));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 13),
                    //height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(FluentSystemIcons.ic_fluent_search_regular,color: Colors.black,size: 20,),
                        SizedBox(width: 15,),
                        Text("Search",style: Stylings.subTitles.copyWith(fontSize: 12),),
                        Expanded(child: SizedBox()),
                        Icon(FluentSystemIcons.ic_fluent_settings_dev_regular,color: Colors.black,size: 20,),
                      ],
                    )
                  ),
                )),
                const SizedBox(width: 20,),
                GestureDetector(
                  onTap: _dispayBottomSheet,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset("${Stylings.imgPath}/locicon.png", fit: BoxFit.contain,),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
