import 'package:primeiro_app/primeiro_app.dart' as primeiro_app;
import 'dart:io';

/*
* Verifica através de número solicitado ao usuário, se o mesmo é múltiplo de 2
*/

void main(List<String> arguments) {
  print('Informe sua nota: ');
  var entradaNota = stdin.readLineSync();
  var nota = double.parse(entradaNota);



  print('Informe a % da sua presença em aula: ');
  var entradaPresenca = stdin.readLineSync();
  var presenca = int.parse(entradaPresenca);

  if (presenca >= 75) {
    if (nota >= 6) {
      print('Aprovado pela nota da PROVA!');
      
    } else {
        print('Informe a nota da recuperação: ');
        var entradaRecuperacao = stdin.readLineSync();
        var recuperacao = double.parse(entradaRecuperacao);
        if (recuperacao >= 6) {
          print('Aprovado pela nota da RECUPERAÇÃO!');
        } else {
          print('Você reprovou pela nota da RECUPERAÇÃO');
        }
    }

  } else {
    print('Você reprovou por frequência!');
  }
}

