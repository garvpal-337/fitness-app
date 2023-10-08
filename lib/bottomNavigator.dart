import 'package:assignment/homePage/homepage.dart';
import 'package:assignment/practiceScreen.dart';
import 'package:assignment/profile.dart';
import 'package:assignment/rehabPage/rehabPage.dart';
import'package:flutter/material.dart';

class bottomNavigator extends StatefulWidget {
  const bottomNavigator({Key? key}) : super(key: key);

  @override
  State<bottomNavigator> createState() => _bottomNavigatorState();
}

class _bottomNavigatorState extends State<bottomNavigator> {
  var currentindex = 0;

  void onTapItem(var index){
    setState((){
      currentindex = index;
    });
  }
  List<Widget> page = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    page = [
      homePage(),
      rehabPage(),
      practice(),
      profilePage()
    ];

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[currentindex],
      bottomNavigationBar: BottomNavigationBar(

        backgroundColor: Colors.grey[300],
        showUnselectedLabels: true,
        currentIndex: currentindex,
        onTap: onTapItem,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,


        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.work_history_outlined),
              label: "Rehab"),
          BottomNavigationBarItem(icon: Icon(Icons.access_time),
              label: "Practice"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined),
              label: "Profile")
        ],
      ),
    );
  }
}
