import 'dart:math';

class Suitcase {
  var id = Random(12);
  String nomeProd;
  double valor;
  String? descricao;
  List<String> tags = ['CustoXBeneficio', 'Luxo', 'Qualidade'];
  String? image = ('');

  Suitcase({
    required this.image,
    required this.nomeProd,
    required this.valor,
    required this.tags,
    this.descricao,
  });
}
