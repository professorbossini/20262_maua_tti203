import 'dart:io';
void testes(){
  var portugues = {"Brasil", "Portugal"};
  var europa = {"Alemanha", "Portugal", "Espanha"};
  //Todos os países em que se fala português e todos os países da Europa
  //Brasil, Portgual, Alemanha, Espanha 
  //Todos os países em que se fala se português e que são europeus
  //Portugal
  //Todos os países em que se fala português e que não são europeus
  //Brasil
  //Todos os países exceto aqueles em que se fala português e que são europeus simultaneamente
  //Brasil, Alemanha e Espanha
  print();
  print();
  print();
  //quase
  print(portugues.union(europa).difference({"Portugal"}));
  //união, intersecção, diferença
  // var A = {1, 2, 3, 4, 5, 6};
  // var B = {1, 3, 7};
  // print(A.union(B));
  // print(B.union(A));
  // print(A.union(A));
  // print(A.intersection(B));
  // print(B.intersection(A));
  // print(A.difference(B));
  // print(B.difference(A));

  // final nomes = {"Ana", "João"};
  // for(var nome in nomes){
  //   print(nome);
  // }
  //set: conjunto
  //{}: set ou map
  // final a = {};
  // final nomes = <Girafa, Banana> {};
  // var paises = {"Brasil", "Brasil"};
  // print(paises);

  // tupla
  //sound null safety
  // final tupla = (null, 18, true, 5);
  // print(tupla);
  // print(tupla.runtimeType);
  // print(tupla.$1);
  // print(tupla.$2);
  // print(tupla.$3);
  // print(tupla.$4);
  // tupla.$1 = "A";
  // tupla[0] = "A";
  // tony hoare
  // var a = <String?> ["A"];
  // a.add(null);
  // List<List<List<bool>?>>? a = [[[true, false, ], null], null];
  // List<num?>? a = [1, 1.1];
  // a.add(null);
  // a = null;
  // final b = [1, "A"];
  // final c = [1, true, "A"];
  // const numeros = [1, 2];
  // numeros[0] = 2;
  // numeros.add(1);
  // print(numeros);
  // numeros = [5];
  // var letras = ["A", "B"];
  // letras[0] = "C";
  // letras.add("K");
  // letras = ["J"];
}