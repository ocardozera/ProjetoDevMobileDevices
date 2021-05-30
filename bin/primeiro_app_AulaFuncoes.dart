import 'dart:io';

/*
* Verifica através de número solicitado ao usuário, se o mesmo é múltiplo de 2
*/

void main(List<String> arguments) {
  exibirHeader();

  var nomeAluno = solicitaNomeAluno();

  var opcao = solicitaUnidadeTempo(nomeAluno);

  printaOpcaoStr(opcao);
  solicitarNotas(opcao);


  
  
}

// Função para exibir o cabeçalho inicial do programa (Função sem parametro e sem retorno)
void exibirHeader() {
  print('+-----------------------+');
  print('|                       |');
  print('|   CÁLCULO DE NOTAS    |');
  print('|                       |');
  print('+-----------------------+');
}

// Função para solicitar o nome do aluno (Função sem parametro e com retorno)
String solicitaNomeAluno() {
  print('Olá aluno(a), informe seu nome: ');
  var entradaNome = stdin.readLineSync();
 return entradaNome;
}

// Função para solicitar qual a unidade de medida de tempo utilizada (bimestre, trimestre, semestre)  (Função com parametro e com retorno)
int solicitaUnidadeTempo(String nome) {
  print('Certo, $nome! Agora me informe se na sua instituição é usado: ');

  exibirOpcoes();
  

  var opcao = solicitaOpcaoAluno();
  
  return opcao;
}

// Função para solicitar qual a opção de unidade de tempo o aluno deseja escolher (bimestre, trimestre, semestre)  (Função sem parametro e com retorno)
int solicitaOpcaoAluno() {
  print('Digite a opção: ');
  var entradaOpcao = stdin.readLineSync();
  var opcao = int.parse(entradaOpcao);

  var opcaoSwitch;

  
  switch (opcao) {
    case 1:
      print('Opção 1 - Bimestre selecionada.');
      return opcaoSwitch = 1;
      
    case 2:
      print('Opção 2 - Trimestre selecionada.');
      return opcaoSwitch = 2;

    case 3:
      print('Opção 3 - Semestre selecionada.');
      return opcaoSwitch = 3;
    default:
      print('Opção inválida.');  
  }

  return opcaoSwitch;
  
}

// Função para printar para o usuário uma mensagem com a opção escolhida (Função com parametro e sem retorno)
void printaOpcaoStr(int opcao) {
  var opcaoString;
  
  if (opcao == 1) {
    opcaoString = 'Bimestre';
  }
  if (opcao == 2) {
    opcaoString = 'Trimestre';
  }
  if (opcao == 3) {
    opcaoString = 'Semestre';
  }

  print('Certo, voce informou que usa ${opcaoString} em sua instituição');

}

// Função para solicitar as notas para o aluno(a) de acordo com a opção que ele escolheu  (Função com parametro e sem retorno)
void solicitarNotas(int opcao) {
  if (opcao == 1) {
    
    print('Informe sua nota do primeiro bimestre: ');
    var entradaNotaPrimBim = stdin.readLineSync();
    var notaPrimBim = double.parse(entradaNotaPrimBim);

    print('Informe sua nota do segundo bimestre: ');
    var entradaNotaSegBim = stdin.readLineSync();
    var notaSegBim = double.parse(entradaNotaSegBim);

    print('Informe sua nota do terceiro bimestre: ');
    var entradaNotaTercBim = stdin.readLineSync();
    var notaTerBim = double.parse(entradaNotaTercBim);

    print('Informe sua nota do quarto bimestre: ');
    var entradaNotaQuarBim = stdin.readLineSync();
    var notaQuarBim = double.parse(entradaNotaQuarBim);

    calculoNotas(opcao, notaPrimBim, notaSegBim, notaTerBim, notaQuarBim);

  } else if (opcao == 2) {

    print('Informe sua nota do primeiro trimestre: ');
    var entradaNotaPrimTrim = stdin.readLineSync();
    var notaPrimTrim = double.parse(entradaNotaPrimTrim);

    print('Informe sua nota do segundo trimestre: ');
    var entradaNotaSegTrim = stdin.readLineSync();
    var notaSegTrim = double.parse(entradaNotaSegTrim);

    print('Informe sua nota do terceiro trimestre: ');
    var entradaNotaTercTrim = stdin.readLineSync();
    var notaTerTrim = double.parse(entradaNotaTercTrim);

    calculoNotas(opcao, notaPrimTrim, notaSegTrim, notaTerTrim);

  } else if (opcao == 3) {
    print('Informe sua nota do primeiro trimestre: ');
    var entradaNotaPrimSem = stdin.readLineSync();
    var notaPrimSem = double.parse(entradaNotaPrimSem);

    print('Informe sua nota do segundo trimestre: ');
    var entradaNotaSegSem = stdin.readLineSync();
    var notaSegSem = double.parse(entradaNotaSegSem);

    calculoNotas(opcao, notaPrimSem, notaSegSem);
  } else {
    print('Opção inválida');
  }

} 

// Função para efetuaro calculo da média aritmética das notas com base na opção que o aluno(a) escolheu e imprimir o resultado na tela (Função com parametro e sem retorno)
void calculoNotas(int opcao, [double nota1, double nota2, double nota3, double nota4]) {
  if (opcao == 1) {
    print('A media aritmetica das suas notas é: ${(nota1+nota2+nota3+nota4) / 4}');
  } else if (opcao == 2) {
    print('A media aritmetica das suas notas é: ${(nota1+nota2+nota3) / 3}');

  } else if (opcao == 3) {
    print('A media aritmetica das suas notas é: ${(nota1+nota2) / 2}');

  } else {
    print('Opção inválida');
  }
}

//Função para mostrar ao usuário as opções de bimestre, trimestre e semestre
void exibirOpcoes() {
   
  print('+-----------------------+');
  print('|  1 - Bimestre         |');
  print('|  2 - Trimestre        |');
  print('|  3 - Semestre         |');
  print('+-----------------------+');
}