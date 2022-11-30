// ignore_for_file: non_constant_identifier_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mochilas/models/app_routes.dart';
import 'package:mochilas/suitcases/lux_suitcase.dart';
import 'package:mochilas/suitcases/normal_suitcase.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  var auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Map<dynamic, dynamic>? data =
        ModalRoute.of(context)?.settings.arguments as Map?;
    //String? name = data!['name'];

    return Scaffold(
      appBar: AppBar(
        primary: true,
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: IconButton(
            icon: const Icon(
              Icons.logout,
              size: 28,
              color: Colors.deepPurpleAccent,
            ),
            onPressed: () async {
              auth.signOut().then(
                    (value) =>
                        Navigator.popAndPushNamed(context, AppRoutes.LOGINPAGE),
                  );
            },
          ),
        ),
        centerTitle: true,
        foregroundColor: Colors.deepPurpleAccent,
        title: Text(
          'Escolha sua mala!',
          //'Olá, $name?',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      backgroundColor: Colors.white30,
      body: Column(
        children: [
          SuitcaseNormal(),
          const SizedBox(height: 5),
          LuxSuitcase(),
        ],
      ),
    );
  }
}
