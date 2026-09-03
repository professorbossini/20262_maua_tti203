import 'dart:io';
void testes(){
  var portugues = {"Brasil", "Portugal"};
  var europa = {"Alemanha", "Portugal", "Espanha"};

  //Todos os países em que se fala português e todos os países da Europa
  print(portugues.union(europa));
  //Todos os países em que se fala português e que são europeus
  // print();
  // //Todos os países em que se fala português e que não são europeus
  // print();
  //Todos os países exceto aqueles em que se fala português e que são europeus(simultaneamente)
  print(portugues.union(europa).difference(portugues.intersection(europa)));

  //conjuntos
  //união, intersecção, diferença
  // var A = {1, 2, 3, 4, 5, 6};
  // var B = {1, 3, 7};
  // print(A.union(B)); // 1, 2, 3, 4, 5, 6, 7
  // print(B.union(A)); // 1, 2, 3, 4, 5, 6, 7
  // print(A.intersection(B)); //1, 3
  // print(B.intersection(A)); //1, 3
  // print(A.difference(B)); //2, 4, 5, 6
  // print(B.difference(A));//7
  //type annotation
  // var eAgora = {
  //   "Nome"
  // };
  // var paises = {"Brasil", "Brasil"};
  // print(paises);
  // Set<Object?>? numeros = {1.1, 1, true, null};
  // numeros = null;
  // var nomes = {"Ana", "João"};
  //{}: mapas e conjuntos
  //var teste = {};
  //tuplas
  // const tupla = ('Ana', 18, true, "Rua B");
  // print(tupla);
  // print(tupla.$1);
  // print(tupla.$2);
  // print(tupla.$3);
  // print(tupla.$4);
  //var, final e const
  // List<int?>? numeros = [1, 2];
  // numeros.add(null);
  // numeros = null;
  //sound null safety
  // var letras = ["A", "B"];
  // String letraNova = stdin.readLineSync()!;
  // letras.add(letraNova);

  // const letras = ["A", "B"];
  // letras[0] = "C";
  // letras.add("D");
  // //letras = ["E"];
  // print(letras);
  // final nomes = ["Ana", "Pedro"];
  // nomes[0] = "João";
  // nomes.add("Emília");
  // print(nomes);
  // nomes = ["A"];
}