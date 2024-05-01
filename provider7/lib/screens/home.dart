import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider7/providers/provider.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MyProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme Changer"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0),
            child: AnimatedCrossFade(
              crossFadeState: Theme.of(context).brightness == Brightness.light
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              firstChild: Image.asset(
                'assets/sun.png',
                width: 200,
              ),
              secondChild: Image.asset(
                'assets/moon.png',
                width: 200,
              ),
              duration: const Duration(milliseconds: 10),
            ),
          ),
          RadioListTile<ThemeMode>(
              title: const Text("Light Theme"),
              value: ThemeMode.light,
              groupValue: provider.themeMode,
              onChanged: provider.setTheme),
          RadioListTile<ThemeMode>(
              title: const Text("Dark Theme"),
              value: ThemeMode.dark,
              groupValue: provider.themeMode,
              onChanged: provider.setTheme),
          RadioListTile<ThemeMode>(
              title: const Text("System Theme"),
              value: ThemeMode.system,
              groupValue: provider.themeMode,
              onChanged: provider.setTheme),
          const SizedBox(
            height: 50,
          ),
          const Icon(Icons.favorite),
          const SizedBox(
            height: 50,
          ),
          Container(
            width: 100,
            height: 50,
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.red
                : Colors.black,
            child: const Center(
              child: Text(
                'Button',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
