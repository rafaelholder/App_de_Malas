import 'package:flutter/material.dart';
import 'package:mochilas/pages/product_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mochilas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.black87,
          ),
          headline2: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            color: Colors.white70,
          ),
          caption: TextStyle(
            fontSize: 22,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
            color: Colors.greenAccent,
          ),
          bodyText1: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600,
            color: Colors.grey,
          ),
          bodyText2: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w300,
            fontStyle: FontStyle.normal,
            color: Colors.grey,
          ),
        ),
        primarySwatch: Colors.cyan,
      ),
      home: ProductPage(),
      //home: const MyHomePage(title: 'Mochilas'),
    );
  }
}
