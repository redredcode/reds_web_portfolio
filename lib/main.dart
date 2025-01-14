import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: const TextStyle(),
          labelStyle: const TextStyle(color: Colors.grey),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: Colors.redAccent.withOpacity(0.3),),
          ),
          contentPadding: const EdgeInsets.only(left: 20),
          filled: true,
          fillColor: Colors.redAccent.withOpacity(0.1)
        )
      ),
      home: const MyHomePage(),
    );
  }
}
