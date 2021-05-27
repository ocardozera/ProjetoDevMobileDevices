import 'package:primeiro_app/primeiro_app.dart' as primeiro_app;
import 'dart:io';

class Funcionario {
  String nome;
  double salario;

  void add(String s) {}
}

void main(List<String> arguments) {
  var listaFuncionario = List<Funcionario>();
  var funcionario = Funcionario();

  listaFuncionario.add(funcionario);



  
  
  print('Quantos funcionarios voce tem?:');
  var entradaQtdFuncionarios = stdin.readLineSync();
  var qtdFuncionarios = int.parse(entradaQtdFuncionarios);

  for (var i=0; i<qtdFuncionarios; i++) {
    var numeroFunc = i+1;
    print('Informe o nome do funcionario $numeroFunc:');
    var nomeFuncionario = stdin.readLineSync();

    print('Informe o salário dele(a):');
    var entradaSalario = stdin.readLineSync();
    var salario = double.parse(entradaSalario);

    listaFuncionario[i].add(funcionario.nome = nomeFuncionario);
    listaFuncionario[i].add(funcionario.salario = salario);
  }



  print(listaFuncionario);
}

// coleções → listas, mapas, filas e conjuntos (todas armazenam um conjunto de valores, porém cada um tem sua característica específica)
//
