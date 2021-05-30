import 'dart:io';

class Funcionario {
  String nome;
  double salario;
}

void main(List<String> arguments) {
  var listaFuncionario = <Funcionario>[];
  



  
  
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

    var funcionario = Funcionario();

    funcionario.nome = nomeFuncionario;
    funcionario.salario = salario;

    listaFuncionario.add(funcionario);

  }

  /* for (var i=0; i < listaFuncionario.length; i++) {
    var nomeFunc = listaFuncionario[i];

    
  } */


  print(listaFuncionario);
}

// coleções → listas, mapas, filas e conjuntos (todas armazenam um conjunto de valores, porém cada um tem sua característica específica)
//
