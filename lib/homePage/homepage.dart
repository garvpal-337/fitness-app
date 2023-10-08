import 'package:assignment/homePage/progressBar.dart';
import 'package:assignment/homePage/sessionController.dart';
import 'package:assignment/homePage/sessions_Timeline.dart';
import 'package:assignment/sessionData.dart';
import 'package:assignment/viewModel.dart';
import'package:flutter/material.dart';
import 'package:get/get.dart';

class homePage extends StatefulWidget {
   homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {

 // var widthFactor = ;



  bool loading = false;
  final controller = Get.put(sessionController());
  final dataService = Get.put(dataModel());
  final dataList = Get.put(sessiondata());


  @override
  Widget build(BuildContext context) {
    int sessionIndex = controller.sessionIndex.toInt();

    var size = MediaQuery.of(context).size;


    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,//size.height * 0.15,
                    width: size.width * 0.7,
                    child: Text('Good Morning Jane',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w500
                    ),),
                  ),
                  progressBar(),
                  SizedBox(height: size.height*0.02,),
                  Expanded(
                    child: sessionsTimeline()
                  )
                ],
              ),
            ),


      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          setState((){
            loading = true;
          });
          //dataService.getSessionIndex();
          print(sessionIndex);
          dataService.adddata(data(time: DateTime.now(),
              session: "Session ${sessionIndex + 1}",
              sessionNo: sessionIndex,
              imageUrl: dataList.Data[sessionIndex],
          )).then((_) => {
          setState((){
          controller.increment();
          if(controller.sessionIndex == 30){
          Get.snackbar("Contatulation",
          "You have complete the sessions",
          backgroundColor: Colors.white.withOpacity(0.5));
          }
          loading = false;
          }),
          });

        },
        label: loading ? CircularProgressIndicator(color: Colors.white,) :Text("Start Session"),
        icon: loading ? null :Icon(Icons.play_arrow),
        extendedPadding: EdgeInsets.symmetric(horizontal: 40),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
