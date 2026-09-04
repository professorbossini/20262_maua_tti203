import 'dart:io';
void boletim(){
  // final boletim = <String, List<double> > {};
  Map<String, List<double>> boletim = {};
  while(true){
    print('1-Cadastrar disciplina\n2-Adicionar nota');
    print('3-Mostrar boletim\n4-Sair');
    final opcao = stdin.readLineSync()?.trim() ?? '';
    if(opcao == '1'){
      final disciplina = stdin.readLineSync()?.trim() ?? '';
      if(disciplina.isEmpty){
        print('O nome não pode ser vazio');  
      }
      else if(boletim.containsKey(disciplina)){
        print('A disciplina já existe');
      }
      else{
        //cadastrar a disciplina associada a uma lista de double vazia
        boletim[disciplina] = <double> [];
        //avisar o usuário que deu certo
        print("Disciplina cadastrada");
      }
    }
    else if(opcao == '2'){
      print('Disciplina:');
      final disciplina = stdin.readLineSync()?.trim() ?? '';
      if(!boletim.containsKey(disciplina)){
        print('Disciplina não encontrada');
        continue;
      }
      final nota = double.tryParse(
        (stdin.readLineSync()?.trim() ?? '').replaceAll(",", '.')
      );
      if(nota == null || nota < 0 || nota > 10){
        print("Nota inválida");
      }else{
        boletim[disciplina]!.add(nota);
        print("Nota cadastrada");
      }
    }
    else if(opcao == '3'){
      
    }
    else if(opcao == '4'){
      break;
    }
    else{
      print('Opção inválida');
    }
  }
}