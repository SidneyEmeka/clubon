import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import '../utils/styles/stylings.dart';

class Payment extends StatefulWidget {
  final Map<String,dynamic> booking;
  const Payment({super.key, required this.booking});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  String _ticketType = "Regular";
  int _baseValue = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        leading: const Icon(FluentSystemIcons.ic_fluent_ticket_regular, size: 25, color: Colors.black,),
        title: Text(_ticketType,style: Stylings.titles.copyWith(fontSize: 13),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:10.0),
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: SizedBox(
                height: 20,
                width: 20,
                child: Image.asset("${Stylings.imgPath}/bad.png"),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //regular
            GestureDetector(
              onTap: (){
                setState(() {
                  _ticketType="Regular";
                });
              },
              child: Container(
                width: size.width,
                margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: _ticketType=="Regular"?Stylings.orange:Colors.black12.withOpacity(0.05),
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Regular  (\$${widget.booking['price']}.99)",style: Stylings.titles.copyWith(fontSize: 14),),
                    _ticketType=="Regular"?
                    Icon(
                      Icons.check_circle_rounded,
                      color: Stylings.orange,
                      size: 20,
                    ):const Icon(
                      Icons.circle_outlined,
                      color: Colors.black12,
                      size: 20,
                    ),


                  ],
                ),
              ),
            ),
            //Vip
            GestureDetector(
              onTap: (){
                setState(() {
                  _ticketType="VIP";
                });
              },
              child: Container(
                width: size.width,
                margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: _ticketType=="VIP"?Stylings.orange:Colors.black12.withOpacity(0.05),
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("VIP  (\$${int.parse(widget.booking['price'])+10}.99)",style: Stylings.titles.copyWith(fontSize: 14),),
                    _ticketType=="VIP"?
                    Icon(
                      Icons.check_circle_rounded,
                      color: Stylings.orange,
                      size: 20,
                    ):const Icon(
                      Icons.circle_outlined,
                      color: Colors.black12,
                      size: 20,
                    ),


                  ],
                ),
              ),
            ),
            //MVP
            GestureDetector(
              onTap: (){
                setState(() {
                  _ticketType="MVP";
                });
              },
              child: Container(
                width: size.width,
                margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: _ticketType=="MVP"?Stylings.orange:Colors.black12.withOpacity(0.05),
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("MVP  (\$${int.parse(widget.booking['price'])+20}.99)",style: Stylings.titles.copyWith(fontSize: 14),),
                    _ticketType=="MVP"?
                    Icon(
                      Icons.check_circle_rounded,
                      color: Stylings.orange,
                      size: 20,
                    ):const Icon(
                      Icons.circle_outlined,
                      color: Colors.black12,
                      size: 20,
                    ),


                  ],
                ),
              ),
            ),
            //How many
            Container(
              margin: const EdgeInsets.only(top: 40),
              height: size.height*0.1,
              width: size.width*0.55,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      if(_baseValue<=19)
                        setState(() {
                         _baseValue++;
                     });
                      },
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset("${Stylings.imgPath}/add.png", fit: BoxFit.contain,),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: size.width*0.2,
                    height: size.height*0.1,
                    decoration: const BoxDecoration(
                      color: Colors.black12,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 25,
                          height: 15,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(bottom: Radius.circular(50))
                          ),
                        ),
                        Text("$_baseValue",style: Stylings.titles.copyWith(fontSize: 15),),
                        Container(
                          width: 25,
                          height: 15,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(top: Radius.circular(50))
                          ),
                        )
                      ],
                    ),
                     ),
                  GestureDetector(
                    onTap: (){
                      if(_baseValue>=1) {
                        setState(() {
                      _baseValue--;
                    });
                      }
                    },
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset("${Stylings.imgPath}/remove.png", fit: BoxFit.contain,),
                    ),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
