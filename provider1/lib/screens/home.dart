import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var x = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Count pgm without provider"),
        ),
        backgroundColor: Colors.pink,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x++;
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Text(
          x.toString(),
          style: const TextStyle(fontSize: 50.0),
        ),
      ),
    );
  }
}
