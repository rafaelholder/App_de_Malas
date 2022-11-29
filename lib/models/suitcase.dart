import 'dart:math';

class Suitcase {
  var id = Random(12);
  String nomeProd;
  double valor;
  List<String> tags = ['CustoXBeneficio', 'Luxo', 'Qualidade', 'Topzera'];

  Suitcase({required this.nomeProd, required this.valor});
}
