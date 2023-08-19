main() {
  //MINHA RESPOSTA
  List<String> values = ["#", "##", "###", "####", "#####", "######"];
  for (String value in values) {
    print(value);
  }

  //RESPOSTA DO PROF
  var valor = "#";
  for (valor; valor != "#######"; valor += "#") {
    print(valor);
  }
}
