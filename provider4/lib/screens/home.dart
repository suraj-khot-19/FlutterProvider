import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider4/provider/provider.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<MyProvider>(context, listen: false);
    //to check UI how Works
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Ex-4"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<MyProvider>(builder: (context, val, child) {
              return Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue.withOpacity(val.value),
                      ),
                      child: const Center(
                        child: Text(
                          "Container 1",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red.withOpacity(val.value),
                      ),
                      child: const Center(
                        child: Text(
                          "Container 2",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }),
            Consumer<MyProvider>(builder: (context, val, child) {
              return Slider(
                  min: 0,
                  max: 1,
                  value: val.value,
                  onChanged: (changedValue) {
                    val.setValue(changedValue);
                  });
            })
          ],
        ),
      ),
    );
  }
}
