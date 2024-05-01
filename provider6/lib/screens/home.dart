import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider6/providers/my_provider.dart';
import 'package:provider6/screens/favorite.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const FavoritePage();
                }));
              },
              child: const Icon(
                Icons.card_travel,
                size: 32.0,
              ),
            ),
          ),
        ],
        title: const Text("favorite App"),
      ),
      body: Column(
        children: [
          Consumer<MyProvider>(builder: (context, value, child) {
            return Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.white,
                    child: ListTile(
                      onTap: () {
                        if (value.selectedtemList.contains(index)) {
                          value.removeItem(index);
                          const Icon(
                            Icons.favorite_border,
                          );
                        } else {
                          value.addItem(index);
                          const Icon(
                            Icons.favorite,
                          );
                        }
                      },
                      title: Text(
                        "Item " + index.toString(),
                        style: const TextStyle(color: Colors.black),
                      ),
                      trailing: Icon(
                        value.selectedtemList.contains(index)
                            ? Icons.favorite
                            : Icons.favorite_border_outlined,
                      ),
                    ),
                  );
                },
              ),
            );
          }),
        ],
      ),
    );
  }
}
