import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailSuitcase extends StatelessWidget {
  const DetailSuitcase({super.key});

  @override
  Widget build(BuildContext context) {
    Map<dynamic, dynamic> data =
        ModalRoute.of(context)?.settings.arguments as Map;
    String? nomeProd = data['nomeProd'];
    String? descricao = data['descricao'];
    List<String> tags = data['tags'];
    Random id = data['id'];
    double? valor = data['valor'];
    //String? image = data['image'];

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black54,
        centerTitle: true,
        title: Text(
          ' Detalhes: $nomeProd',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      backgroundColor: Colors.white30,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.lightGreen[300],
                ),
                child: Text(
                  '$nomeProd',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
              SizedBox(height: 8),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.lightGreen[300],
                ),
                child: Text(
                  '$descricao',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
              SizedBox(height: 8),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.lightGreen[300],
                ),
                child: Text(
                  '${tags[0]} - ${tags[1]} - ${tags[2]}',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
              SizedBox(height: 8),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.lightGreen[300],
                ),
                child: Text(
                  '$valor',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: 180,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Colors.white54,
                      Colors.black45,
                      Colors.white54,
                    ],
                  ),
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: CupertinoButton(
                  onPressed: () {},
                  child: Text(
                    'Comprar',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
