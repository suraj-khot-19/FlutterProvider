import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/my_provider.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MyProvider>(context);
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[200],
        title: const Text("favorite App"),
      ),
      body: Column(
        children: [
          Consumer<MyProvider>(builder: (context, value, child) {
            return Expanded(
              child: ListView.builder(
                //returning only selected items
                itemCount: provider.selectedtemList.length,
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
