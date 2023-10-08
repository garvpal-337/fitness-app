import 'package:assignment/viewModel.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class history extends StatelessWidget {
  //const history({Key? key}) : super(key: key);

  final dataService = Get.find<dataModel>();
  Widget _buildBorad( String Title, int num, String url){
    return Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(Title,
            style: TextStyle(
                fontSize: 18
            ),),
          SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
                width: 40,
                child: Image.network(url),
              ),
              Text('${num}',
                style: TextStyle(
                    fontSize: 26
                ),),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: dataService.fetchAndGetData(),
      builder: (ctx,snapshot) => snapshot.connectionState == ConnectionState.waiting ?
      Center(child: CircularProgressIndicator(),)
         : Column(
            children: [
              Container(
                height: 80,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12,
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex : 1,
                      child: _buildBorad("Total session",
                        dataService.items.length,
                        "https://cdn3.iconfinder.com/data/icons/diet-filled-outline/64/dumbbell-hand-diet-nutrition-fitness-512.png",
                      ),
                    ),
                    Expanded(
                      flex : 1,
                      child: _buildBorad("Total Time",
                          dataService.items.length,
                          "https://cdn0.iconfinder.com/data/icons/healthcare-medicine/512/schedule-512.png"
                      ),
                    )
                  ],
                ),
              ),

              Expanded(
                child: ListView.builder(
                itemCount: dataService.items.length,
                itemBuilder: (ctx,index){
                  return Container(
                    height: 100,
                    margin: EdgeInsets.symmetric(vertical: 2,horizontal: 0),
                    child: ListTile(
                      leading: Container(
                        height: 80,
                        width: 80,
                        child: Image.network(dataService.items[index].imageUrl,fit: BoxFit.fitHeight,),
                      ),
                      title: Row(
                        children: [
                          Icon(Icons.access_time,color: Colors.black,),
                          SizedBox(width: 5,),
                          Text(formatDate(dataService.items[index].time, [hh,":", nn ,])),
                        ],
                      ),
                      subtitle: Row(
                        children: [
                          Icon(Icons.date_range,color: Colors.black,),
                          SizedBox(width: 5,),
                          Text(formatDate(dataService.items[index].time, [dd,"-", mm ,"-",yyyy]),
                            style: TextStyle(
                              color: Colors.black
                            ),),
                        ],
                      ),
                      trailing: Text("View Result"),
                    ),
                  );
                }),
              ),
            ],
          ),
    );
  }
}
