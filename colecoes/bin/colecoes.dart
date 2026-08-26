import 'package:colecoes/colecoes.dart' as colecoes;

void main(List<String> arguments) {
  final nomes = ["João", "Maria", "José", "Ana", "Carlos"];
  // nomes = ['Carlos', 'Lucas'];
  nomes[0] = "Cristina";
  print(nomes);
  const nomesConstantes = ["João", "Maria", "José", "Ana", "Carlos"];
  nomesConstantes[0] = "Cristina";
  print(nomesConstantes);
  // int soma = 0;
  // for (final arg in arguments) {
  //   print(arg);
  //   print(arg.runtimeType);
  //   int? numero = int.tryParse(arg);
  //   if (numero != null) {
  //     print("O número é: $numero");
  //     soma += numero;
  //   }
  // }
  // print("A soma dos números é: $soma");
  // print(arguments.isEmpty);
  // print(arguments.isNotEmpty);
  // var nomes = ['João', 'Maria', 'José', 'Ana', 'Carlos'];
  // nomes.add("Cristina");
  // print(nomes);
  // nomes.insert(0, "Ana Maria");
  // print(nomes);
  // nomes.insert(5, "Vagner");
  // print(nomes);
  // nomes.insert(7, "Lucas");
  // print(nomes);
  // print(nomes.contains("Lucas"));
  // print(nomes.contains("LUCAS"));
  // List<String> nomesSemInfericao = ["Cássio", "Bruna", "Diego"];
  // print(nomesSemInfericao);
  // print(nomesSemInfericao.runtimeType);
  // List<int> idadesSemAfericao = [13, 15, 20];
  // print(idadesSemAfericao);
  // print(idadesSemAfericao.runtimeType);
  // List<bool> maioridadeSemInfericao = [false, false, true];
  // print(maioridadeSemInfericao);
  // print(maioridadeSemInfericao.runtimeType);
  // var listaDeListas = [
  //   nomesSemInfericao,
  //   idadesSemAfericao,
  //   maioridadeSemInfericao,
  // ];
  // print(listaDeListas);
  // List lista = [];
  // lista.add("João");
  // lista.add(15);
  // lista.add(true);
  // print(lista);
  // print(lista.runtimeType);
  // lista[0] = 2;
  // print(lista);
  // print(lista.runtimeType);
  // var somenteStrings = <String>['Ana', 'Pedro'];
  // print(somenteStrings);
  // print(somenteStrings.runtimeType);
  //print(nomes.reversed);
  // // var numeros = [1, 2, 3, 4, 5];
  // print(nomes);
  // print(nomes.first);
  // var vazia = [];
  // print(vazia.isEmpty);
  // //print(vazia.first);
  // print(vazia.firstOrNull);
  // print([].firstOrNull);
  // print(nomes.last);
  // print(vazia.lastOrNull);
  // print(nomes.toString());
  // print(nomes.runtimeType);
  // print(numeros.toString());
  // print(numeros.runtimeType);
  // print(nomes[0]);
  // //  nomes[0] = "José";
  // //  print(nomes);
  // for (int i = 0; i < nomes.length; i++) {
  //   print(nomes[i]);
  // }
  // print("Inicianco segunda forma de percorrer a lista");
  // for (final nome in nomes) {
  //   print(nome);
  // }
  // var tiposVariados = ["Ana", true, 2, 2.5];
  // print(tiposVariados);
  // print(tiposVariados.runtimeType);
}
