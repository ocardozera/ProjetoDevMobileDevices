

void main(List<String> arguments) {

  //var nomes = <String>[];

  var nomes = ['Carlos', 'Matheus', 'Lukas'];
  nomes.add('Pedro');
  nomes.insert(0, 'Rebeca');
  nomes.removeAt(1);
  var qtdElementos = nomes.length;
  print(qtdElementos);

  //var i = 0;
  //while (i < qtdElementos ) {
  //  print(nomes[i]);
  //  i++;
  //}


  // esse for é muito útil quando precisamos do contador
  /*
  for (var i=0; i < qtdElementos; i++) {
    print(nomes[i]);
  }
  */

  // quando nao precisamos de contador, podemos usar foreach
  /* for (var nome in nomes) {
    print(nome);
  } */


  // a propria lista tem um metodo foreach 
  /* nomes.forEach( (nome) => print(nome) );  */ // como executamos uma unica vez, nao faz sentido criar uma funcao nomeada 
                                          // ai criamos uma funcao anonima, pq ela é executada uma unica vez
  

  nomes.forEach(print); 
  /* a funcao foreach vai percorrer a lista de nomes e pra cada elemento vai chamar a funcao print, 
  e vai imprimir o nome corrente no console. Este unico comando equivale o while, for etc */
 

 
}

void imprimir(String nome){ //funcao nomeada
  print(nome);
}



// coleções → listas, mapas, filas e conjuntos (todas armazenam um conjunto de valores, porém cada um tem sua característica específica)
// 