import 'dart:io';
import 'dart:math';
void main(){
  var gerador = Random();
  //inteiro aleatório (uniforme) entre 0 e 5
  var n1 = gerador.nextInt(6);
  print(n1);
  //inteiro entre 1 e 10
  var n2 = gerador.nextInt(10) + 1;
  print(n2);
  //real aleatório (uniforme) entre 0 e 1 [0, 1)
  var n3 = gerador.nextDouble();
  print(n3);
  //real aleatório (uniforme) entre 0 e 100 [0, 100)
  var n4 = gerador.nextDouble() * 100;
  print(n4);
  //real aleatório entre 100 e 150
  var n5 = gerador.nextDouble() * 50 + 100;
}
// void main(){
//   var valor = 2.311332322;
//   print('${valor.toStringAsFixed(2)}');
// }
// void main(){
//   //sound null safety
//   int idade = int.parse(stdin.readLineSync()!);

//   try{
//     String s;
//     s.indexOf("a");
//   }
//   catch(NullPointerException e){

//   }

// }
// void main(){
//   stdout.writeln("Digite seu nome:");
//   var nome = stdin.readLineSync();
//   stdout.write("Olá, $nome!");
//   //sound null safety
//   //int idade = int.parse(stdin.readLineSync());
//   // String? idadeTextual = stdin.readLineSync();
//   // if(idadeTextual != null){
//   //   int idade = int.parse(idadeTextual);  
//   // }
//   String? entrada = stdin.readLineSync();
//   while(entrada == null){
//     entrada = stdin.readLineSync();
//   }
//   int idade = int.parse(entrada);
// }