import 'package:clubon/onboarding/chooselocation.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Businness {
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

}