import 'package:assignment/rehabPage/history.dart';
import 'package:assignment/rehabPage/knee_Rehab_card.dart';
import 'package:assignment/viewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class rehabPage extends StatefulWidget {

  @override
  State<rehabPage> createState() => _rehabPageState();
}

class _rehabPageState extends State<rehabPage> {
  final dataService = Get.put(dataModel());






  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child:Column(
            children: [
             // https://static.vecteezy.com/system/resources/thumbnails/001/427/153/small/modern-liquid-blue-background-free-vector.jpg
              Container(
                width: size.width,
                padding: EdgeInsets.all(10),
                child: Text('Rehab Programme',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500
                  ),),
              ),
              kneeRehabCard(),
              Padding(
                // height: 40,
                // width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                child :Row(
                  children: [
                    Text('History',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700
                      ),),
                    Spacer(),
                    Icon(Icons.history,size: 30,)
                  ],
                ),
              ),

              //history()
              Expanded(
                  child: history()
              )
            ],

          ),

        ),
      ),
    );
  }
}
