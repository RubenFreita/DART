import '../model/carro.dart';

main() {
  Carro carro1 = Carro(velocidadeMaxima: 50);
  for (int i = 0; i <= 11; i++) {
    carro1.acelerar();
    print("O carro está no limite? ${carro1.estaNoLimite()}");
  }
  for (int i = 0; i <= 13; i++) {
    carro1.frear();
  }
  return 0;
}
