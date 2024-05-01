import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider7/providers/provider.dart';
import 'package:provider7/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => MyProvider())],
      child: Builder(
        builder: (BuildContext context) {
          final provider = Provider.of<MyProvider>(context);
          return MaterialApp(
            title: 'Flutter Demo',
            themeMode: provider.themeMode,
            theme: ThemeData(
              brightness: Brightness.light,
              appBarTheme: const AppBarTheme(
                backgroundColor: Colors.blue,
              ),
            ),
            darkTheme: ThemeData(
                brightness: Brightness.dark,
                appBarTheme: const AppBarTheme(
                  backgroundColor: Colors.purple,
                )),
            home: const MyHome(),
          );
        },
      ),
    );
  }
}
