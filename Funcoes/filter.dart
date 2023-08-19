import 'dart:math';

main() {
  List<double> notas = [];
  for (int i = 0; i < 10; i++) {
    notas.add((Random().nextDouble() * 10));
  }
  var notasB1 = filtro1(notas);
  for (var nota in notasB1) {
    print("Notas do filtro1 " + nota.toStringAsFixed(2));
  }
  print("");
  var notasB2 = filtro2(notas);
  for (var nota in notasB2) {
    print("Notas do filtro2 " + nota.toStringAsFixed(2));
  }
  print("");
  var fnNotasBoas = (double nota) => nota >= 7;
  var notasB3 = filtrar<double>(notas, fnNotasBoas);
  for (var nota in notasB3) {
    print("Notas do filtrar com Gerenic " + nota.toStringAsFixed(2));
  }
}

//RESOLUÇÃO MAIS ARCAICA
List<double> filtro1(List notas) {
  List<double> notasBoas = [];
  for (var nota in notas) {
    if (nota >= 7.0) {
      notasBoas.add(nota);
    }
  }
  return notasBoas;
}

//RESOLUCAO USANDO WHERE
List filtro2(List notas) {
  var notasBoas = notas.where((e) => e >= 7.0).toList();
  return notasBoas;
}

//CRIANDO UMA FUNÇÃO WHERE DO ZERO, REPARE QUE ELA USA GENERIC
//PARA A FUNÇÃO RECONHECER O GENERIC TEM QUE SE COLOCAR O GENERIC A FRENTE DO NOME DA FUNÇÃO
List<E> filtrar<E>(List<E> lista, bool Function(E) fn) {
  List<E> listaBoa = [];
  for (E elemento in lista) {
    if (fn(elemento)) {
      listaBoa.add(elemento);
    }
  }
  return listaBoa;
}
