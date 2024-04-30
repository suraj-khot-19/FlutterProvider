import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:provider5/providers/my_provider.dart';

class Secound extends StatefulWidget {
  const Secound({super.key});

  @override
  State<Secound> createState() => _SecoundState();
}

class _SecoundState extends State<Secound> {
  @override
  Widget build(BuildContext context) {
    print("hello i am building context....");
    return Consumer<MyProivder>(
      builder: (create, proValue, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Secound Page"),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Center(
                child: Text(
                  proValue.number.last.toString(),
                  style: const TextStyle(fontSize: 30, color: Colors.red),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: proValue.number.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          proValue.number[index].toString(),
                          style:
                              const TextStyle(fontSize: 30, color: Colors.blue),
                        ),
                      );
                    }),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              proValue.addListNum();
            },
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
