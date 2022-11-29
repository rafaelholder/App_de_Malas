import 'package:flutter/material.dart';
import 'package:mochilas/models/suitcase.dart';

class ProductPage extends StatelessWidget {
  var mala_luxo = Suitcase(nomeProd: 'Mala de Luxo', valor: 2000);
  var mala_normal = Suitcase(nomeProd: 'mala normal', valor: 400);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.black54,
        title: const Text('Escolha sua nova Mala'),
      ),
      backgroundColor: Colors.white38,
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.maxFinite,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: Card(
              elevation: 12,
              margin: EdgeInsets.all(16),
              color: Colors.grey,
              child: Image.asset('assets/Suitcase.png'),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 24, right: 24, bottom: 4, top: 1),
                child: Container(
                  color: Colors.black,
                  width: 250,
                  child: Text(
                    '${mala_normal.tags}',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ),
              Text(
                'R\$ ${mala_normal.valor}',
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          ),
          SizedBox(
            width: 50,
          ),
          Container(
            height: 200,
            width: double.maxFinite,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: Card(
              elevation: 12,
              margin: EdgeInsets.all(16),
              color: Colors.grey,
              child: Image.asset('assets/Luxury_suitcase.png'),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 24, right: 20, bottom: 4, top: 1),
                child: Container(
                  color: Colors.black,
                  width: 250,
                  child: Text(
                    '${mala_luxo.nomeProd}',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ),
              Text(
                'R\$${mala_luxo.valor}',
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          )
        ],
      ),
    );
  }
}
