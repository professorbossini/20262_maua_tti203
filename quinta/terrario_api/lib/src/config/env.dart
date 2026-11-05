import 'package:dotenv/dotenv.dart';

// Ponto único (objeto) de leitura que guarda as variáveis de ambiente

class Env{

  Env._();

  static final DotEnv _env = DotEnv(includePlatformEnvironment: true)..load();

  // chave = "DB_USER"
  // funcao que verifica se uma variavel obrigatória não veio nula/vazia
  static String obrigatoria(String chave){
      // valor = terrario_app
      final valor = _env[chave];
      // .trim() = retira espaços de uma string
      // se o valor é nulo ou vazio
      if(valor == null || valor.trim().isEmpty){
        throw StateError('Variável de ambiente obrigatória ausente: $chave');
      }
      return valor.trim();
  }

  // Lê uma variável opcional, devolvendo um valor padrao quando ela não existe
  static String opcional(String chave, String padrao){
    final valor = _env[chave];
    return (valor == null || valor.trim().isEmpty) ? padrao : valor.trim();
  }

  // Lê um inteiro, recusando valores que não sejam numéricos
  // chave = DB_PORT, padrao = 3306
  static int inteiro(String chave, int padrao){
    // bruto = valor lido como string
    final bruto = _env[chave]; // bruto = "3307"
    if(bruto == null || bruto.trim().isEmpty) return padrao;
    final valor = int.tryParse(bruto.trim());
    if(valor == null){ // cenário onde não conseguimos transformar bruto em inteiro
      throw StateError("A variavel $chave deve ser um número inteiro: $bruto");
    }
    return valor;
  }
}