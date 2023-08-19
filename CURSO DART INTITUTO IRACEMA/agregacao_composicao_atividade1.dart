// Agregação e Composição

class Dependente {
  late String _nome;

  Dependente(this._nome);

  String get nome => _nome;

  @override
  String toString() {
    super.toString();
    return nome;
  }
}

class Funcionario {
  Funcionario(this._nome, this._dependentes);

  late String _nome;
  late List<String> _dependentes;

  String get nome => _nome;
  List<Dependente> get dependentes => _dependentes.map<Dependente>((element) {
        return Dependente(element);
      }).toList();

  @override
  String toString() {
    super.toString();
    return "\nNome do Funcionário: $nome,\n Dependentes do Funcionário $nome: ${dependentes}";
  }
}

class EquipeProjeto {
  late String _nomeProjeto;
  late List<Funcionario> _funcionarios;

  EquipeProjeto(this._nomeProjeto, this._funcionarios);

  String get nomeProjeto => _nomeProjeto;
  List<Funcionario> get funcionarios => _funcionarios;

  @override
  String toString() {
    super.toString();
    return "Nome do projeto: $nomeProjeto, \n"
        "Funcionários: ${funcionarios}";
  }
}

void main(List<String> args) {
  List<Funcionario> listaFuncionarios = [
    Funcionario(
      "Augusto",
      ["Maria", "Daniel", "Carla"],
    ),
    Funcionario(
      "João",
      ["Joana", "Janaina", "Jorge"],
    ),
    Funcionario(
      "Roberto",
      ["Ruan", "Raniel", "Rubi"],
    ),
  ];

  EquipeProjeto equipeProjeto = EquipeProjeto(
    "Curso de Flutter",
    listaFuncionarios,
  );
  print(equipeProjeto);
}
