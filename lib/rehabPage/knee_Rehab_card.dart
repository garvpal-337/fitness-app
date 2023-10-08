import 'package:flutter/material.dart';

class kneeRehabCard extends StatelessWidget {
  const kneeRehabCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 180, //size.height * 0.4,
        width: double.infinity,
        alignment: Alignment.bottomRight,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.33),
            image: DecorationImage(
                image: NetworkImage(
                  'https://img.freepik.com/free-vector/abstract-background-with-gradient-shapes_23-2148705497.jpg?size=626&ext=jpg',
                ),
                fit: BoxFit.cover,
                alignment: Alignment.bottomRight)),
        child: Row(
          children: [
            Expanded(
                child: Container(
              padding: EdgeInsets.only(left: 20),
              child: FittedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Knee Reheb Programme",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    Text("Mon,Thu,Sat: 3 Session/day",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w500)),
                    Chip(
                        backgroundColor: Colors.white,
                        label: Text("Left Shoulder",
                            style: TextStyle(
                                color: Colors.indigo,
                                fontWeight: FontWeight.w700))),
                    Text("Assigned By",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w600)),
                    Text("Joe Doe",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
              ),
            )),
            Container(
              height: double.infinity,
              width: 150,
              alignment: Alignment.bottomRight,
              child: Image.network(
                "https://www.lcphysiotherapy.com.au/img/labrador/labrador-physio-treatment.png",
                height: 180,
              ),
            )
          ],
        ));
  }
}
