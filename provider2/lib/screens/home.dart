import 'dart:async';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;
  //this function execute first yes before build method
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      count++;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    print("building....");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Count+Clock Without using Provider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                DateTime.now().hour.toString() +
                    ":" +
                    DateTime.now().minute.toString() +
                    ":" +
                    DateTime.now().second.toString(),
                style: const TextStyle(fontSize: 25)),
            Text(
              count.toString(),
              style: const TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
