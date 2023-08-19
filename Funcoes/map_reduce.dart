main() {
  var alunos = [
    {"nome": "Alfredo", "nota": 9.9},
    {"nome": "Wilson", "nota": 9.3},
    {"nome": "Mariana", "nota": 8.7},
    {"nome": "Guilherme", "nota": 8.1},
    {"nome": "Ana", "nota": 7.6},
    {"nome": "Ricardo", "nota": 6.8},
  ];
  //MAP
  String Function(Map) pegarApenasNome = (aluno) => aluno['nome'];
  int Function(String) qtdLetras = (nome) => nome.length;
  int Function(int) dobro = (qtd) => qtd * 2;

  var resultado = alunos
      .map(pegarApenasNome)
      .map(qtdLetras)
      .map(dobro)
      .reduce((value, element) => value * element);

  print(resultado);
  //||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

  //REDUCE
  var notas = [7.3, 5.4, 7.7, 8.1, 5.5, 4.9, 9.1, 10.0];
}
