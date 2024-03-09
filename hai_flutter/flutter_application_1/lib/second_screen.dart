// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          height: 443,
          width: 323,
          color: Colors.white,
          child:  Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Are you sure want to quit?",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              Image(image: AssetImage("assets/robot.png")),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50,
                    width: 110,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,width: 2,),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.blue
                    ),
                    // color: Colors.red,
                    child: const Center(
                      child: Text("Cancel",style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 110,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.blue
                    ),
                    child: const Center(
                      child: Text("Quit", style: TextStyle(color: Colors.white),),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
