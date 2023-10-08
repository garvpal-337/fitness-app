import 'package:assignment/homePage/sessionController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class progressBar extends StatelessWidget {

  final controller = Get.find<sessionController>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var sessionIndex = controller.sessionIndex.toInt();
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10),),
          border: Border.all(color: Colors.black),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black,
                blurRadius: 2
            )
          ]
      ),
      height: 140,//size.height *0.18,
      width: size.width,
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text("Today's Progress",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400
                ),),
              Spacer(),
              Text("${((sessionIndex/30) * 100).toStringAsFixed(0)}%",style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  color: Colors.indigo
              ),)
            ],
          ),

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              border: Border.all(color: Colors.black),
            ),
            height: 15,
            alignment: Alignment.centerLeft,
            child: FractionallySizedBox(
              //alignment: Alignment.,
              widthFactor: sessionIndex/30,//widthFactor,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(color: Colors.black),
                    color: Colors.blue
                ),
              ),
            ),
          ),
          Row(
            children: [
              Row(
                children: [
                  Image.network("https://th.bing.com/th/id/OIP.HfMoTs3pxRRlMlDbZ-wH6gHaHa?w=215&h=216&c=7&r=0&o=5&dpr=1.3&pid=1.7",
                    width: 30,
                    height: 30,
                  ),
                  Text(" Completed \n $sessionIndex Session",style: TextStyle(
                      fontWeight: FontWeight.w500
                  ),)
                ],
              ),
              Spacer(),
              Row(
                children: [
                  Image.network("https://th.bing.com/th/id/R.f924fb68bee9bade90ecf8b26bc40638?rik=rjQuG0bFyG05Tg&riu=http%3a%2f%2ficons.iconarchive.com%2ficons%2fpaomedia%2fsmall-n-flat%2f1024%2fsign-right-icon.png&ehk=fa6F4uI1E2DudiSEwNVKYb8QJFYzl6Mec8zdJx15svU%3d&risl=&pid=ImgRaw&r=0",
                    width: 35,
                    height: 35,
                  ),
                  Text(" Pending \n ${30-sessionIndex} Session",style: TextStyle(
                      fontWeight: FontWeight.w500
                  ),)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
