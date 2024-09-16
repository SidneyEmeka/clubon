import 'package:clubon/onboarding/chooselocation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Businness {
  var location = "location".obs;
  var ticketPrice = 0.0.obs;
  var count = 1.obs;
  var ticketType = "Regular".obs;
  var bookingTotal = 0.0;
  void increment(){
    if(count<=4) {
      count++;
    }
    else{
      Get.snackbar("Ticket Limit", "You can not buy more than 5 tickets once");
    }
  }
  void decreament(){
    if(count>=2) {
      count--;
    }
    else{
      Get.snackbar("Ticket Limit", "You can not buy less than a ticket");
      }
  }

  var cardType = "Card".obs;
  var saveCard = false.obs;

  var paymentStatus = false.obs;

  var reportId = "Others".obs;
  var otherReport = ''.obs;
  var feedbackStatus = false.obs;

  var people = [
  {
  "id":1,
  "imgUrl":"assets/images/jlop.png",
  "name":"Jennifer Lopez",
  "username":"jnotlop",
  },
  {
  "id":2,
  "imgUrl":"assets/images/clock.png",
  "name":"MarkAnthony Sharad Woods",
  "username":"mash",
  },
  {
  "id":3,
  "imgUrl":"assets/images/f1.png",
  "name":"Millicent Brad",
  "username":"millicentbrad",
  },
  {
  "id":4,
  "imgUrl":"assets/images/f2.png",
  "name":"Evelyn Nwachukwu",
  "username":"evenwa",
  },
  {
  "id":5,
  "imgUrl":"assets/images/f3.png",
  "name":"Qing Sidney",
  "username":"sidney",
  },
  {
  "id":6,
  "imgUrl":"assets/images/f4.png",
  "name":"Adugo Jackson",
  "username":"user276727276828297927",
  },
  {
  "id":7,
  "imgUrl":"assets/images/f5.png",
  "name":"Uche Christian",
  "username":"ucee",
  },
  {
  "id":8,
  "imgUrl":"assets/images/f1.png",
  "name":"Malachy Steve",
  "username":"malachysteve",
  },
  {
  "id":9,
  "imgUrl":"assets/images/jlop.png",
  "name":"Mckenzie Makara",
  "username":"msquared",
  },
  {
  "id":10,
  "imgUrl":"assets/images/f4.png",
  "name":"Zendaya Ugwu",
  "username":"zeezeebby",
  },
  ].obs;
 var importContacts = false.obs;
 var friendPage = 'Suggestion'.obs;

 var searchPage = "All".obs;

 var ticketPage = "UC".obs;

 var totalEarning = 32000.obs;
 var totalPoints = 320000000.obs;
 var latestLive = 2000.obs;
 var thisWeek = 8500.obs;
  var thisMonth = 14000.obs;
 var lastPayout = 8700.67.obs;


 var countries = ["GBP","NIG"];
 var selectedRate = "GBP".obs;
 var showError = false.obs;
 var toSend = 0.0.obs;
 var toRecieve = 0.00.obs;
 void convert(num amount) {
   if(amount > totalEarning.value){
     showError.value=true;
   }
   else{
     showError.value=false;
     if(selectedRate.value=="NIG"){
       toRecieve.value = amount * 1650;
     }
    else if(selectedRate.value=="GBP"){
       toRecieve.value = amount * 0.76;
     }
   }
 }
 var withdrawalStatus = false.obs;

 var bankAccs = [].obs;
 var actName = TextEditingController().obs;
 var acctNumber = TextEditingController().obs;
 var sortCode = TextEditingController().obs;
 var userBankName = "Union Bank".obs;
 var bankNames = ["Union Bank", "Zenith Bank", "UBA", "Moniepoint", "Opay", "First Bank"].obs;

  var theRange =  RangeValues(20, 100).obs;
  var min = 20.0;
  var max = 100.0;
  List<Map<String,dynamic>> otherFilters = [
    {"title":"This weekend","isF":true}.obs,
    {"title":"New shows","isF":false}.obs,
    {"title":"Most viewed","isF":false}.obs,
    {"title":"Comedy","isF":false}.obs,
    {"title":"Festivals","isF":true}.obs,
    ];
  var isFi = false.obs;
  var isFo = false.obs;
}