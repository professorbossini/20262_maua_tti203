import 'package:mysql_dart/mysql_dart.dart';
import 'app_config.dart';

// Cria o pool de conexões a partir da configuração da aplicação.
MySQLConnectionPool criarPool(AppConfig config){
  return MySQLConnectionPool(
    host: config.dbHost,
    port: config.dbPort,
    userName: config.dbUser,
    password: config.dbPassword,
    databaseName: config.dbName,
    maxConnections: config.dbPoolSize,
    // Dentro da rede privada do Docker o tráfego não sai da máquina, então o 
    // protocolo TLS é dispensável
    secure: false,
    // Necessário porque o MySQL 8 precisa buscar a chave pública do servidor
    // na autenticação quando não utilizamos o TLS
    allowPublicKeyRetrieval: true
  );
}

// Aguarda o banco ficar disponível
// Em um ambiente com Docker o container com a API pode subir antes do com o MySQL
// Nesse caso, esperaremos 2 segundos e tentaremos conectar novamente
Future<void> aguardarBanco(
  MySQLConnectionPool pool, {
    int tentativas = 30,
    Duration intervalo = const Duration(seconds: 2),
  }
) async {
  for(var tentativa = 1; tentativa <= tentativas; tentativa++){
    try{
      // tentar me conectar à pool de conexões
      await pool.execute('SELECT 1');
      return;
    }catch(_){
      // se eu não conseguir, caimos no catch, esperamos 2 segundos e a função reinicia
      if(tentativa == tentativas) rethrow;
      await Future<void>.delayed(intervalo);
    }
  }
}
