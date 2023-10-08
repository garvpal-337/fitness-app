
import 'dart:math';

import 'package:get/get.dart';
import 'package:http/http.dart';
import 'dart:convert';

class data{
  DateTime time;
  String session;
  int sessionNo;
  String imageUrl;
  data({required this.time,
    required this.session,
    required this.sessionNo,
    required this.imageUrl});
}

class dataModel extends GetxController{

  List<data> _items = [];

  List<data> get items {
    return [..._items];
   }

   Future<void> adddata(data newData) async{

    final url = 'https://assignment-94857-default-rtdb.firebaseio.com/data.json';
   try {
     final response = await post(Uri.parse(url), body: jsonEncode({
       "session": newData.session,
       "sessionNo" : newData.sessionNo,
       "imageUrl" : newData.imageUrl,
       "performedAt" : newData.time.toIso8601String()
     }));
     _items.add(newData);
     print(jsonDecode(response.body));
   } catch (error){
     throw error;
   }
  }

  Future<void> fetchAndGetData() async {
    final url = 'https://assignment-94857-default-rtdb.firebaseio.com/data.json';

    try {
      final response = await get(Uri.parse(url));
      final fetchedData = jsonDecode(response.body) as Map<String , dynamic>;
      //print(fetchedData);
      if(fetchedData.isEmpty){
        return ;
      }
      List<data> fetchData = [];
      fetchedData.forEach((key, Data) {
        fetchData.add(data(time: DateTime.parse(Data['performedAt']),
            session: Data['session'],
            sessionNo: Data['sessionNo'],
            imageUrl: Data['imageUrl']));
        _items = fetchData;
      });
      print(fetchData);
      print(_items);
      notifyChildrens();
    } catch (error){
      throw error;
    }
  }

}