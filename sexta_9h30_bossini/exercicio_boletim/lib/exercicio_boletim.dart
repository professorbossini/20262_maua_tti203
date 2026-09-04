import 'dart:io';
void boletim(){
  // final boletim = <String, List<double> > {};
  Map <String, List<double> > boletim = {};
  final menu = '1-Cadastrar disciplina\n2-Adicionar nota\n3-Mostrar boletim\n4-Sair';
  while(true){
    print(menu);
    //sound null safety
    final opcao = stdin.readLineSync()?.trim() ?? '';
    if(opcao == '1'){
      print('Digite o nome da disciplina:');
      final disciplina = stdin.readLineSync()?.trim() ?? '';
      if(disciplina.isEmpty){
        print('O nome não pode ser vazio');
      }
      else if(boletim.containsKey(disciplina)){
        print('A disciplina já existe');
      }
      else{
        boletim[disciplina]  = <double> [];
        print('Disciplina cadastrada');
      }
    }
    else if(opcao == '2'){
      print('Digite o nome da disciplina para a qual quer cadastrar uma nota');
      final disciplina = stdin.readLineSync()?.trim() ?? '';
      if(!boletim.containsKey(disciplina)){
        print('Disciplina não encontrada');
        continue;//interrompe a iteração atual, pulando para a próxima, o loop continua
      }
      print("Digite uma  nota de 0 a 10");
      final nota = double.tryParse(
        (stdin.readLineSync() ?? '').replaceAll(',', '.')
      );
      if( nota == null || nota < 0 || nota > 10){
        print('Nota inválida');
      }
      else{
        //sound null safety
        boletim[disciplina]?.add(nota);
        print('Nota adicionada');
      }
    }
    else if(opcao == '3'){
      
    }
    else if (opcao == '4'){
      break;
    }
    else{
      print('Opção inválida');
    }
  }

}