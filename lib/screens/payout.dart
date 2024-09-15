import 'package:clubon/getxserver/businesslogic.dart';
import 'package:clubon/screens/addbankacc.dart';
import 'package:clubon/screens/earnings.dart';
import 'package:clubon/screens/payoutsuccess.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/styles/stylings.dart';

class Payout extends StatelessWidget {
  const Payout({super.key});

  @override
  Widget build(BuildContext context) {
    var moneyBiz = Businness();
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
        title: Text("Payout",style: Stylings.titles.copyWith(fontSize: 12),),
        centerTitle: true,
      ),
      body:   Obx(()=>Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        width: Get.width,
        height: Get.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //us
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Amount to withdraw",style: Stylings.titles.copyWith(fontSize: 12),),
                  moneyBiz.showError.value?Text("Amount exceed balance",style: Stylings.titles.copyWith(fontSize: 10,color: Colors.red),):Container(),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              margin: const EdgeInsets.symmetric(horizontal: 18,vertical: 15),
              width: Get.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Colors.grey.shade300
                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 42,
                    height: 38,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: const DecorationImage(image: AssetImage("assets/images/us.jpeg"),fit: BoxFit.cover)
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("USD",style: Stylings.titles.copyWith(fontSize: 12),),
                      const SizedBox(height: 3),
                      RichText(text: TextSpan(
                          children: [
                            TextSpan(text: "Balance: ",style: Stylings.titles.copyWith(fontSize: 10,color: Colors.grey.shade500)),
                            TextSpan(text: " 32,000 USD",style: Stylings.titles.copyWith(fontSize:9,)),
                          ]
                      ))
                    ],
                  ),
                  const SizedBox(width: 50),
                  Expanded(child: TextField(
                    onChanged: (value){
                      moneyBiz.toSend.value = double.parse(value);
                      moneyBiz.convert(moneyBiz.toSend.value);
                    },
                    textAlign: TextAlign.end,
                    style: Stylings.titles.copyWith(fontSize: 15),
                    cursorColor: Colors.black45,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "0.0",
                        hintStyle: Stylings.titles.copyWith(fontSize: 15,color: Colors.grey.shade500),
                        border: InputBorder.none
                    ),
                  ))
                ],
              ),
            ),
            //icon
            Container(
              height: 28,
              width: 28,
              decoration: BoxDecoration(
                  color: Stylings.bgColor,
                  shape: BoxShape.circle
              ),
              child: Transform.rotate(angle: 3.14159/2,
                  child: Icon(Icons.compare_arrows_outlined,size: 15,color: Stylings.orange,)),
            ),
            //to
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("You will receive",style: Stylings.titles.copyWith(fontSize: 12),),
                  Text("1 USD = ${moneyBiz.selectedRate.value=="GBP"?"0.76 GBP":"1650 NGN"}",style: Stylings.titles.copyWith(fontSize: 11),),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              margin: const EdgeInsets.symmetric(horizontal: 18,vertical: 15),
              width: Get.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Colors.grey.shade300
                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 42,
                    height: 38,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(image: AssetImage(moneyBiz.selectedRate.value=="GBP"?"assets/images/brt.png":"assets/images/ng.png"),fit: BoxFit.cover)
                    ),
                  ),
                  const SizedBox(width: 5),
                  DropdownButton(
                      padding: const EdgeInsets.only(left: 8),
                      menuMaxHeight: Get.height * 0.2,
                      borderRadius: BorderRadius.circular(10),
                      value: moneyBiz.selectedRate.value,
                      dropdownColor: Stylings.bgColor,
                      iconEnabledColor: Colors.black,
                      icon: const Icon(Icons.keyboard_arrow_down_sharp,size: 17,color: Colors.black,),
                      underline: const SizedBox(),
                      items: [
                        ...moneyBiz.countries.map((aState) {
                          return DropdownMenuItem(
                              value: aState,
                              child: Text(
                                aState,
                                style: Stylings.titles.copyWith(fontSize: 12),
                              ));
                        })
                      ],
                      onChanged: (value) {
                        moneyBiz.selectedRate.value = value!;
                        moneyBiz.convert(moneyBiz.toSend.value);
                      }),
                  const SizedBox(width: 50),
                  const Expanded(child:SizedBox()),
                  Text(moneyBiz.toRecieve.value.toString(),style: Stylings.titles.copyWith(fontSize: 15),)
                ],
              ),
            ),
            //accts
            Get.arguments==null?
            GestureDetector(
              onTap: (){
                Get.to(()=>const Addbankacc());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                margin: const EdgeInsets.symmetric(horizontal: 19),
                width: Get.width,
                decoration: BoxDecoration(
                    color: Stylings.bgColor,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Add Account",style: Stylings.titles.copyWith(fontSize: 12),),
                    const Icon(Icons.arrow_forward_ios,size: 15,color: Colors.black,)
                  ],
                ),
              ),
            ):
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 19),
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                  width: Get.width,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(5)),
                      border: Border.all(color: Colors.grey.shade200)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("To",style: Stylings.titles.copyWith(fontSize: 12),),
                      Text(Get.arguments[0]['acname'],style: Stylings.titles.copyWith(fontSize: 12),),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 19),
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                  width: Get.width,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade200)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Account number",style: Stylings.titles.copyWith(fontSize: 12),),
                      Text(Get.arguments[0]['acnum'],style: Stylings.titles.copyWith(fontSize: 12),),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 19),
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                  width: Get.width,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(5)),
                      border: Border.all(color: Colors.grey.shade200)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Bank name",style: Stylings.titles.copyWith(fontSize: 12),),
                      Text(Get.arguments[0]['bankName'],style: Stylings.titles.copyWith(fontSize: 12),),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 19),
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                  width: Get.width,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(5)),
                      border: Border.all(color: Colors.grey.shade200)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Sort code",style: Stylings.titles.copyWith(fontSize: 12),),
                      Text(Get.arguments[0]['sortcode'].toString().isEmpty?"XXXXX":Get.arguments[0]['sortcode'],style: Stylings.titles.copyWith(fontSize: 12),),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Get.to(()=>const Addbankacc());
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 19),
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                    width: Get.width,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(5)),
                        border: Border.all(color: Colors.grey.shade200)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Change account",style: Stylings.titles.copyWith(fontSize: 12),),
                        const Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15,)
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const Expanded(child: SizedBox()),
            GestureDetector(
              onTap: (){
               if(Get.arguments==null&&moneyBiz.toRecieve.value==0.0)
                {
                Get.snackbar(duration: const Duration(milliseconds: 3000),"Incomplete Details", "Kindly add a payment account of your choice\nEnsure you are withdrawing more than \$1");
                }
                else if(Get.arguments==null)
                {
                  Get.snackbar(duration: const Duration(milliseconds: 2500),"Account Details", "Kindly add a payment account of your choice");
                }
                else if(moneyBiz.toRecieve.value==0.0)
                {
                  Get.snackbar(duration: const Duration(milliseconds: 2500),"Withdrawal limit", "You cannot withdraw less than \$1");
                }
                else{
                  Get.to(()=>Payoutsuccess(),arguments: {"amount":moneyBiz.toRecieve,"currency":moneyBiz.selectedRate});
                }
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 14),
                alignment: Alignment.center,
                width: Get.width,
                height: Get.height*0.05,
                decoration: BoxDecoration(
                    color: Stylings.orange,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Text("Request payout",style: Stylings.titles.copyWith(fontSize: 12,color: Colors.white),),
              ),
            ),
            const SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                Get.to(()=>const Earnings());
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 14),
                alignment: Alignment.center,
                width: Get.width,
                height: Get.height*0.05,
                decoration: BoxDecoration(
                    color: Stylings.bgColor,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Text("Cancel",style: Stylings.titles.copyWith(fontSize: 12),),
              ),
            ),
          ],
        ),
      ))
    );
  }
}
