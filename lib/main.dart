import 'package:flutter/material.dart';
import 'package:mochilas/models/app_routes.dart';
import 'package:mochilas/pages/cadastro_page.dart';
import 'package:mochilas/pages/detail_suitcase_page.dart';
import 'package:mochilas/pages/login_page.dart';
import 'package:mochilas/pages/product_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Malas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
            color: Colors.black54,
          ),
          headline2: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
            color: Colors.deepPurpleAccent,
          ),
          caption: TextStyle(
            fontSize: 22,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
            color: Colors.greenAccent[400],
          ),
          button: TextStyle(
            fontSize: 22,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w800,
            color: Colors.greenAccent[700],
          ),
          bodyText1: const TextStyle(
            fontSize: 20,
            fontFamily: 'Raleway',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600,
            color: Colors.deepPurpleAccent,
          ),
          bodyText2: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            fontFamily: null,
            color: Colors.grey,
          ),
        ),
        primarySwatch: Colors.lightGreen,
      ),
      //home: const CadastroPage(),
      //home: const LoginPage(),
      home: const ProductPage(),
      //home: const MyHomePage(title: 'Mochilas'),

      routes: {
        AppRoutes.LOGINPAGE: (context) => const LoginPage(),
        AppRoutes.CADASTROPAGE: (context) => const CadastroPage(),
        AppRoutes.PRODUCTPAGE: (context) => const ProductPage(),
        AppRoutes.DETAILPAGE: (context) => const DetailSuitcase(),
      },
    );
  }
}
