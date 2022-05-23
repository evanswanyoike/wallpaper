import 'package:flutter/material.dart';
import 'package:wallpaper/pages/landing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wallpaper app',
      themeMode: ThemeMode.system,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: Colors.blueGrey),
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.amber,
        navigationBarTheme: const NavigationBarThemeData(
          indicatorColor: Colors.orange,
        ),
      ),
      home: const Landing(),
    );
  }
}
