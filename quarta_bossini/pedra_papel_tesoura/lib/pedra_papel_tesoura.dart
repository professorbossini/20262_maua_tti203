import 'dart:io';
import 'dart:math';
enum OPCAO {
  pedra, papel, tesoura, sair
}
void exibe(String texto){
  print(texto);
}
int pegaOpcaoUsuario(){
  return int.parse(stdin.readLineSync()!);
}
bool opcaoEhValida(int opcao){
  return opcao >= 1 && opcao <= 4;
}
OPCAO mapeiaOpcao(int opcao){
  return OPCAO.values[opcao - 1];  
}
String decideResultado(OPCAO opcaoUsuario, OPCAO opcaoComputador){
  if(opcaoUsuario == opcaoComputador) return "Empate";
  if((opcaoUsuario == OPCAO.papel && opcaoComputador == OPCAO.pedra) ||(opcaoUsuario == OPCAO.pedra && opcaoComputador == OPCAO.tesoura) || (opcaoUsuario == OPCAO.tesoura && opcaoComputador == OPCAO.papel) ){
    return "Você venceu";
  }
  return "Computador venceu";
}
//o usuário pode colocar crédito de 50 a 100
//quando perde, ele perde 1 real
//quando ganha, ele ganha 50 centavos
//o jogo termina quando o dinheiro acabar
//se o usuário conseguir 10 seguidas, ele ganha um bonus de 50 reais
void jogo(){
  int opUsuario;
  do{
    do{
      exibe('1-Pedra\n2-Papel\n3-Tesoura\n4-Sair');
      opUsuario = pegaOpcaoUsuario();
    }while(!opcaoEhValida(opUsuario));
    if(opUsuario != 4){
      int opComputador = Random().nextInt(3) + 1;
      OPCAO opcaoUsuario = mapeiaOpcao(opUsuario);
      OPCAO opcaoComputador = mapeiaOpcao(opComputador);
      //Você(tesoura) vs (pedra)Computador
      exibe('Você(${opcaoUsuario.name}) vs (${opcaoComputador.name})Computador');
      String vencedor  = decideResultado(opcaoUsuario, opcaoComputador);
      exibe(vencedor);
      exibe("*******************************");
      sleep(Duration(seconds: 3));
    }
  }while(opUsuario != 4);
  exibe("Até logo!");
}

