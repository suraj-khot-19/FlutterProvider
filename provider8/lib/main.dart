import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider8/home.dart';
import 'package:provider8/theme/theme.dart';
import 'package:provider8/theme/theme_provider.dart';

void main() {
  runApp(const MyApp());
}

ThemeProvider _provider = ThemeProvider();

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) {
          return ThemeProvider();
        })
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: _provider.theme,
        home: const MyHomePage(title: 'Theme Changer'),
      ),
    );
  }
}
