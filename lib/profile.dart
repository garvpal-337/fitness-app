import 'package:flutter/material.dart';

class profilePage extends StatelessWidget {
  const profilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                alignment: Alignment.center,
                child: Image.network(
                    "https://www.pngmart.com/files/10/Female-User-Account-Transparent-PNG.png"),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Jane",
                style: TextStyle(fontSize: 30),
              ),
              Divider(
                thickness: 2,
                endIndent: 100,
                indent: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
