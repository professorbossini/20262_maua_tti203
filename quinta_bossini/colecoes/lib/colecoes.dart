void testes(){
  //{}
  var pessoa = <String, Object> {
    'nome': 'Ana',
    'idade': 22
  };
  //keys, values, entries
  //for/in
  for(final key in pessoa.keys){
    print('$key: ${pessoa[key]}');
    // print(key);
    // print(pessoa[key]);
  }
  for (final value in pessoa.values){
    print(value);
  }

  for(final entry in pessoa.entries){
    print(entry);
    print('${entry.key}: ${entry.value}');
  }


  // print(pessoa['nome']);
  // //casting
  // var nome = pessoa['nome'] as String;
  // print(nome.toUpperCase());
  // //print(pessoa['idade'].toUpperCase());
  // var idade = pessoa['idade'] as String;
  // print(idade.toUpperCase());
  //sound null safety
  // var pessoa = <String, dynamic> {
  //   'nome': 'Ana',
  //   'idade': 22
  // };
  // Object a = 1;
  // //a.falar();
  // dynamic b = 1;
  // b.falar();
  // Map <String?, Object?> pessoa = {
  //   'nome': 'Pedro',
  //   'idade': 22,
  //   'peso': null,
  //   null: 1
  // };
  // var pessoa = {
  //   'nome': 'Pedro',
  //   'nome': 'João'
  // };
  // print(pessoa);
  // var pessoa = {
  //   'nome': 'Ana',
  //   'idade': 22,
  //   'altura': 1.8
  // };
  // print(pessoa);

  // var lembretes = {
  //   1: 'comprar café',
  //   2: 'ver um filme'
  // };
  // print(lembretes);
}


// void testes(){
//   //união, intersecção, diferença
//   // var A = {1, 2, 3, 4, 5, 6};
//   // var B = {1, 3, 7};
//   // print(A.union(B));
//   // print(A.intersection(B));
//   // print(A.difference(B));
//   // print(B.difference(A));
//   // const nomes = {'Ana', 'João'};
//   // print(nomes.elementAt(0));
//   // for(const nome in nomes){
//   //   print(nome);
//   // }
//   // {}: sets e maps
//   // var paises = <String, int> {};
//   // var nomes = {'Ana', 'João'};
//   // print(nomes);
//   // var paises = {'Brasil', 'Brasil'};
//   // print(paises);
//   // var teste1 = {};
//   //tuplas
//   // var tupla = ('Ana', 18, true, false);
//   // print(tupla.$1);
//   // print(tupla.$2);
//   // print(tupla.$3);
//   // print(tupla.$4);
//   //type annotation
//   // List<int> lista = [];
//   // lista.
//   // var l3 = <String?> [null];
//   // List<String?>? l2 = ["Ana", null];
//   // l2 = null;
//   // List <String> l1 = ["Ana", 1];
//   // var vazia = [];
//   //var nomes = ["Ana", "João"];
//   //nomes.add(null);
//   // const nomes = ["Ana", "Pedro"];
//   // // nomes = ["A"];
//   // nomes[0] = "A";
//   // final nomes = [1.1, 1, "Ana"];
//   // nomes[2] = "Ana Silva";
//   // nomes = ["Outra"];
// }
