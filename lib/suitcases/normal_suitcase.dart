import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mochilas/models/app_routes.dart';

import '../models/suitcase.dart';

class SuitcaseNormal extends StatelessWidget {
  final malaNormal = Suitcase(
    image: 'assets/Suitcase.png',
    nomeProd: 'Mala de Viagem',
    valor: 400,
    tags: ['Custo X Beneficio', 'Qualidade', 'Viagens'],
    descricao: 'Essa mala é uma mala muito boa!',
  );

  SuitcaseNormal({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            bottom: 1,
            top: 6,
            left: 6,
            right: 6,
          ),
          child: CupertinoButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                AppRoutes.DETAILPAGE,
                arguments: {
                  'nomeProd': malaNormal.nomeProd,
                  'valor': malaNormal.valor,
                  'tags': malaNormal.tags,
                  'descricao': malaNormal.descricao,
                  'id': malaNormal.id,
                  'imagem': malaNormal.image,
                },
              );
            },
            child: Container(
              height: 200,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: const LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.lightGreenAccent,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Image.asset(
                'assets/Suitcase.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 60,
              width: 160,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(7),
                child: Text(
                  textAlign: TextAlign.center,
                  // ignore: unnecessary_string_interpolations
                  '${malaNormal.nomeProd}',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Container(
              height: 60,
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                gradient: const LinearGradient(
                  colors: [
                    Colors.white12,
                    Colors.deepPurple,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(12),
                //color: Colors.transparent,
              ),
              child: Text(
                textAlign: TextAlign.center,
                'R\$ ${malaNormal.valor.toStringAsFixed(2)}',
                style: Theme.of(context).textTheme.caption,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
