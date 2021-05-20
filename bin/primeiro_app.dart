import 'package:primeiro_app/primeiro_app.dart' as primeiro_app;
import 'dart:io';

void main(List<String> arguments) {
  print('Informe o seu nome:');
  var nome = stdin.readLineSync();

  print('Informe sua idade:'); 
  var entradaIdade = stdin.readLineSync();
  var idade = int.parse(entradaIdade);

  print('Informe seu salário:');
  var entradaSalario = stdin.readLineSync();
  var salario = double.parse(entradaSalario);

  dynamic y = 'Roberto'; //a variável dinâmica irá virar string
  y = 10; // variável irá virar inteiro
  y = 99.9; //e irá virar double

  print('Meu nome é: $nome, minha idade: $idade anos e ganho: $salario reais ... $y');
}
