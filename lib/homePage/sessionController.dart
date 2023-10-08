
import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart';

class sessionController extends GetxController {


  var sessionIndex = 0.obs;
  void increment(){
   // sessionIndex = 10.obs;
    if(sessionIndex < 30){
      sessionIndex ++;
    }else{
      sessionIndex = 0.obs;
    }
  }
}