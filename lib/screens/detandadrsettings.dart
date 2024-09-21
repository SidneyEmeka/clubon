import 'package:clubon/homes/settings.dart';
import 'package:clubon/screens/settingsotp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/styles/stylings.dart';

class Detandadrsettings extends StatefulWidget {
  final String which;
  const Detandadrsettings({super.key, required this.which});

  @override
  State<Detandadrsettings> createState() => _DetandadrsettingsState();
}

class _DetandadrsettingsState extends State<Detandadrsettings> {
  bool loading=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
        title: widget.which=="my"?Text("My details",style: Stylings.titles.copyWith(fontSize: 11),):Text("Address",style: Stylings.titles.copyWith(fontSize: 11),),
        centerTitle: true,
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        margin: const EdgeInsets.symmetric(vertical: 20,horizontal: 15),
        child: widget.which=="my"?Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //name
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 7),
              child: Text("Name",style: Stylings.titles.copyWith(fontSize: 10,color: Colors.grey.shade600),),
            ),
            TextField(
              cursorColor: Stylings.bgColor,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Stylings.orange)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide:  BorderSide(color: Colors.grey.shade500,width: 0.5)
                  ),
                   ),

            ),
            const SizedBox(height: 20),
            //Phone number
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 7),
              child: Text("Phone number",style: Stylings.titles.copyWith(fontSize: 10,color: Colors.grey.shade600),),
            ),
            TextField(
              keyboardType: TextInputType.number,
              cursorColor: Stylings.bgColor,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Stylings.orange)
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:  BorderSide(color: Colors.grey.shade500,width: 0.5)
                ),
              ),

            ),
            const SizedBox(height: 20),
            //Email
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 7),
              child: Text("Email",style: Stylings.titles.copyWith(fontSize: 10,color: Colors.grey.shade600),),
            ),
            TextField(
              cursorColor: Stylings.bgColor,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Stylings.orange)
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:  BorderSide(color: Colors.grey.shade500,width: 0.5)
                ),
              ),

            ),
            const Expanded(child: SizedBox()),
            GestureDetector(
              onTap: (){
              Get.to(()=>const Settingsotp());
              },
              child: Container(
                alignment: Alignment.center,
                width: Get.width,
                height: Get.height*0.05,
                decoration: BoxDecoration(
                    color: Stylings.orange,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Text("Save",style: Stylings.titles.copyWith(fontSize: 12,color: Colors.white),),
              ),
            ),
          ],
        ):widget.which=='ad'?Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            loading==true?Center(child: LinearProgressIndicator(
              color: Stylings.orange,
              borderRadius: BorderRadius.circular(10),
            ),):
            //Adr 1
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 7),
              child: Text("Address line 1 (Required)",style: Stylings.titles.copyWith(fontSize: 10,color: Colors.grey.shade600),),
            ),
            TextField(
              cursorColor: Stylings.bgColor,
              decoration: InputDecoration(
                hintText: "Enter address",
                hintStyle: Stylings.subTitles.copyWith(fontSize: 11,color: Colors.grey.shade500),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Stylings.orange)
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:  BorderSide(color: Colors.grey.shade500,width: 0.5)
                ),
              ),

            ),
            const SizedBox(height: 20),
            //Adr 2
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 7),
              child: Text("Address  line 2",style: Stylings.titles.copyWith(fontSize: 10,color: Colors.grey.shade600),),
            ),
            TextField(
              keyboardType: TextInputType.number,
              cursorColor: Stylings.bgColor,
              decoration: InputDecoration(
                hintText: "Enter address",
                hintStyle: Stylings.subTitles.copyWith(fontSize: 11,color: Colors.grey.shade500),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Stylings.orange)
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:  BorderSide(color: Colors.grey.shade500,width: 0.5)
                ),
              ),

            ),
            const SizedBox(height: 20),
            //City
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 7),
              child: Text("City",style: Stylings.titles.copyWith(fontSize: 10,color: Colors.grey.shade600),),
            ),
            TextField(
              cursorColor: Stylings.bgColor,
              decoration: InputDecoration(
                hintText: "Enter city",
                hintStyle: Stylings.subTitles.copyWith(fontSize: 11,color: Colors.grey.shade500),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Stylings.orange)
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:  BorderSide(color: Colors.grey.shade500,width: 0.5)
                ),
              ),

            ),
            const SizedBox(height: 20),
            //Country
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 7),
              child: Text("Country",style: Stylings.titles.copyWith(fontSize: 10,color: Colors.grey.shade600),),
            ),
            TextField(
              cursorColor: Stylings.bgColor,
              decoration: InputDecoration(
                hintText: "Enter country",
                hintStyle: Stylings.subTitles.copyWith(fontSize: 11,color: Colors.grey.shade500),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Stylings.orange)
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:  BorderSide(color: Colors.grey.shade500,width: 0.5)
                ),
              ),

            ),
            const Expanded(child: SizedBox()),
            GestureDetector(
              onTap: (){
                setState(() {
                  loading=true;
                });
                Future.delayed(const Duration(seconds: 1),(){
                  setState(() {
                    loading=false;
                  });
                  Get.to(()=>const Settingspref());
                });
              },
              child: Container(
                alignment: Alignment.center,
                width: Get.width,
                height: Get.height*0.05,
                decoration: BoxDecoration(
                    color: Stylings.orange,
                    borderRadius: BorderRadius.circular(7)
                ),
                child: Text("Add address",style: Stylings.titles.copyWith(fontSize: 11,color: Colors.white),),
              ),
            ),
          ],
        ): const SizedBox(),
      ),
    );
  }
}
