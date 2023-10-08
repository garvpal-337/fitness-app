import 'package:flutter/material.dart';

class practice extends StatelessWidget {
  const practice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text('Practice',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w500
              ),),
          ],
        ),
    );
  }
}
