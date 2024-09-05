import 'package:clubon/data/constantdata.dart';
import 'package:clubon/utils/reusables/locheader.dart';
import 'package:clubon/utils/styles/stylings.dart';
import 'package:flutter/material.dart';

import '../utils/reusables/eventcard.dart';
import '../utils/reusables/filtercard.dart';

class Timeline extends StatefulWidget {
  const Timeline({super.key});

  @override
  State<Timeline> createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  String selected = "Tonight";
  Future _dispayBottomSheet() {
    return showModalBottomSheet(context: context,
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
    return SafeArea(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
         Locheader(),
        Expanded(
            child: ListView(
          children: [
            //filter
            Container(
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black12))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ...Clubon.filters.entries.map((aFilter) {
                    return GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = aFilter.key;
                          });
                        },
                        child: Filtercard(
                          title: aFilter.key,
                          imgUrl: aFilter.value,
                          selected: selected,
                        ));
                  })
                ],
              ),
            ) ,
            //Events
           ...Clubon.tonight.map((anEvent){
             final eventPosterPfp = anEvent['pfp'];
             final eventPosterUsername = anEvent['username'];
             final eventBanner = anEvent['imgUrl'];
             final eventComments = anEvent['comments'];
             final eventLikes = anEvent['likes'];
             final eventTitle = anEvent['title'];
             final eventDate = anEvent['date'];
             final eventLocation = anEvent['location'];
             final eventPrice = anEvent['price'];
             return Eventcard(imgUrl: eventBanner, comments: eventComments, likes: eventLikes, title: eventTitle, date: eventDate, location: eventLocation, price: eventPrice, pfp: eventPosterPfp, username: eventPosterUsername,);
           })

          ],
        ))
      ],
    ));
  }
}
