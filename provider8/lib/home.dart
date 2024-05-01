import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'theme/theme_provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, value, child) {
      return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(title),
            actions: [
              Switch(
                  value: value.theme == ThemeMode.dark,
                  onChanged: (currentTheme) {
                    value.changeTheme(currentTheme);
                  }),
            ],
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: Image.asset('assets/image.png'),
                  ),
                  const Text("Name : Suraj Khot"),
                  const Text("id : TheKhot_19")
                ],
              ),
            ),
          ));
    });
  }
}
