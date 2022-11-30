import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/app_routes.dart';
import '../models/suitcase.dart';

class LuxSuitcase extends StatelessWidget {
  final malaDeLuxo = Suitcase(
    image: 'assets/Luxury_suitcase.png',
    nomeProd: 'Mala de Luxo',
    valor: 2000,
    tags: ['Luxo', 'De marca', 'Qualidade certificada'],
    descricao: 'Mala de marca e luxo',
  );

  LuxSuitcase({super.key});
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
                  'nomeProd': malaDeLuxo.nomeProd,
                  'valor': malaDeLuxo.valor,
                  'tags': malaDeLuxo.tags,
                  'descricao': malaDeLuxo.descricao,
                  'id': malaDeLuxo.id,
                  'imagem': malaDeLuxo.image,
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
                    Colors.orange,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Image.asset(
                'assets/Luxury_suitcase.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 160,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(7),
                child: Text(
                  textAlign: TextAlign.center,
                  malaDeLuxo.nomeProd,
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
                'R\$ ${malaDeLuxo.valor.toStringAsFixed(2)}',
                style: Theme.of(context).textTheme.caption,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
