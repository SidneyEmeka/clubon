import 'package:clubon/onboarding/chooselocation.dart';
import 'package:get/get.dart';

class Businness {
  var ticketType = "Regular".obs;
  var count = 0.obs;
  void increment(){
    if(count<=19) {
      count++;
    }
    else{
      Get.snackbar("Ticket Limit", "You can not buy more than 20 tickets once");
    }
  }void decreament(){
    if(count>=2) {
      count--;
    }
    else{
      Get.snackbar("Ticket Limit", "You can not buy less than a ticket");
      }
  }
}