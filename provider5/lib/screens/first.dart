import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider5/providers/my_provider.dart';
import 'package:provider5/screens/secound.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Consumer<MyProivder>(
      builder: (create, proValue, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("First Page"),
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
                    itemCount: proValue.number.length,
                    itemBuilder: (context, index) {
                      return Text(
                        proValue.number[index].toString(),
                        style:
                            const TextStyle(fontSize: 30, color: Colors.blue),
                      );
                    }),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const Secound();
                  }));
                },
                child: const Text(
                  "secound Page",
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
              )
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
