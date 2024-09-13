import 'package:clubon/getxserver/businesslogic.dart';
import 'package:clubon/screens/payout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/styles/stylings.dart';

class Addbankacc extends StatelessWidget {
  const Addbankacc({super.key});

  @override
  Widget build(BuildContext context) {
    var bankBiz = Businness();
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
        title: Text("Enter bank details",style: Stylings.titles.copyWith(fontSize: 12),),
        centerTitle: true,
      ),
      body: Obx(()=>Container(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
        width: Get.width,
        height: Get.height*0.6,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //name
            TextField(controller: bankBiz.actName.value,
              cursorColor: Stylings.bgColor,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black,width: 0.5)
                  ),
                  labelText: "Account name",
                  labelStyle: Stylings.subTitles.copyWith(fontSize: 12)
              ),

            ),
            const SizedBox(height: 15),
            //number
            TextField(
              controller: bankBiz.acctNumber.value,
              cursorColor: Stylings.bgColor,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black,width: 0.5)
                  ),
                  labelText: "Account number",
                  labelStyle: Stylings.subTitles.copyWith(fontSize: 12)
              ),

            ),
            const SizedBox(height: 15),
            //sort code
            TextField(
              controller: bankBiz.sortCode.value,
              cursorColor: Stylings.bgColor,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black,width: 0.5)
                  ),
                  labelText: "Sort code",
                  labelStyle: Stylings.subTitles.copyWith(fontSize: 12)
              ),

            ),
            const SizedBox(height: 15),
            //bank name
           Container(
             width: Get.width,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(5),
               border: Border.all(color: Colors.black,width: 0.5)
             ),
             child:  DropdownButton(
                dropdownColor: Stylings.bgColor,
               isExpanded: true,
                 padding: const EdgeInsets.only(left: 8),
                 menuMaxHeight: Get.height * 0.2,
                 borderRadius: BorderRadius.circular(10),
                 value: bankBiz.userBankName.value,
                 iconEnabledColor: Colors.black,
                 icon: const Icon(Icons.keyboard_arrow_down_sharp,size: 17,color: Colors.black,),
                 underline: const SizedBox(),
                 items: [
                   ...bankBiz.bankNames.map((aState) {
                     return DropdownMenuItem(
                         value: aState,
                         child: Text(
                           aState,
                           style: Stylings.titles.copyWith(fontSize: 12),
                         ));
                   })
                 ],
                 onChanged: (value) {
                  bankBiz.userBankName.value=value!;
                 }),
           ),
            const Expanded(child: SizedBox()),
            GestureDetector(
              onTap: (){
                bankBiz.bankAccs.add({
                  "acname": bankBiz.actName.value.text,
                  "acnum": bankBiz.acctNumber.value.text,
                  "sortcode": bankBiz.sortCode.value.text,
                  "bankName": bankBiz.userBankName.value,
                });
                Get.to(()=>Payout(),arguments: bankBiz.bankAccs);
              },
              child: Container(
                alignment: Alignment.center,
                width: Get.width,
                height: Get.height*0.05,
                decoration: BoxDecoration(
                    color: Stylings.orange,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Text("Continue",style: Stylings.titles.copyWith(fontSize: 12,color: Colors.white),),
              ),
            ),
          ],
        ),
      ),)
    );
  }
}
