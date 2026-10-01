import 'package:dotenv/dotenv.dart';

class Env{

  Env._();

  // carregar as variáveis de ambiente (local) em um úncio objeto
  static final DotEnv _env = DotEnv(includePlatformEnvironment: true)..load();

  // Lê uma variável obrigatória. Lança [StateError] se ela estiver ausente
  // ou vazia, interrompendo a inicialização em vez de deixar o servidor subir
  // com a configuração incompleta
  static String obrigatoria(String chave){
    final valor = _env[chave];
    //.trim() = pega a string sem espaços  
    if(valor == null || valor.trim().isEmpty){
      throw StateError('Variável de ambiente obrigatório ausente: $chave');
    }
    return valor.trim();
  }

  // Lê uma variável opcional, devolvendo [padrao] quando ela não existe
  static String opcional(String chave, String padrao){
    final valor = _env[chave];
    return (valor == null || valor.trim().isEmpty) ? padrao : valor.trim();
  }

  // Lê um inteiro, recusando valores que não sejam numéricos
  static int inteiro(String chave, int padrao){
    final bruto = _env[chave];
    if(bruto == null || bruto.trim().isEmpty) return padrao;
    final valor = int.tryParse(bruto.trim());
    if(valor == null){ // a transformacao para inteiro nao funcionou
      throw StateError("A variável $chave deve ser um número inteiro: $bruto");
    }
    return valor;
  }
}