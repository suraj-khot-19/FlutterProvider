import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider3/provider/count_provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    final countprovider = Provider.of<CountProvider>(context, listen: false);
    Timer.periodic(Duration(seconds: 1), (timer) {
      countprovider.setCount();
    });
  }

  @override
  Widget build(BuildContext context) {
    final countprovider = Provider.of<CountProvider>(context, listen: false);
    print("building");
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Using Provider"),
        ),
      ),
      body: Center(
        child: Consumer<CountProvider>(
          builder: (context, value, child) {
            print("only this widget bulding /////");
            return Text(
              value.count.toString(),
              style: TextStyle(fontSize: 50),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countprovider.setCount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
