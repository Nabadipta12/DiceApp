import 'dart:math';

import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DiceApp());
}


class DiceApp extends StatelessWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}


class Homescreen extends StatefulWidget {
   Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
   int num = 0;

   void getRandomNumber(){
    num = Random().nextInt(5) + 1; // 0 - 5
  }

  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
      color: Colors.white,
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("DiceApp"),
        ),
          body:  Center(
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    getRandomNumber();
                    print(num);
                  });
                },
                child: Image(
                  image: AssetImage("images/${num+1}.png"),
                  height: 250,
                  width: 250,
                ),
              )
          )
        )
    );
  }
}
