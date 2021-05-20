import 'package:primeiro_app/primeiro_app.dart' as primeiro_app;
import 'dart:io';

/*
* Verifica através de número solicitado ao usuário, se o mesmo é múltiplo de 2
*/

void main(List<String> arguments) {
  print('Digite um número para verificar se ele é múltiplo por 2: ');
  var entradaNumero = stdin.readLineSync();
  var numero = int.parse(entradaNumero);

  if (numero % 2 == 0) {
    print('O número que você digitou: $numero, É múltiplo por 2');
  } else {
    print('O número que você digitou: $numero, NÃO é múltiplo por 2');
  }
}

