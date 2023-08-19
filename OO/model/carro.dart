class Carro {
  final int velocidadeMaxima;
  int velocidadeAtual = 0;

  Carro({required this.velocidadeMaxima});

  void acelerar() {
    if (this.velocidadeAtual < this.velocidadeMaxima) {
      this.velocidadeAtual += 5;
      print("A velocidade atual é de ${this.velocidadeAtual}Km/h");
    }
    if (this.velocidadeAtual == this.velocidadeMaxima) {
      print("Velocidade Máxima de ${this.velocidadeMaxima} foi alcançada!!");
    }
  }

  void frear() {
    if (this.velocidadeAtual > 0) {
      this.velocidadeAtual -= 5;
      print("A velocidade atual é de ${this.velocidadeAtual}Km/h");
    }
    if (this.velocidadeAtual == 0) {
      print("O carro está parado!!");
    }
  }

  bool estaNoLimite() {
    if (this.velocidadeAtual == this.velocidadeMaxima) {
      return true;
    } else {
      return false;
    }
  }
}
