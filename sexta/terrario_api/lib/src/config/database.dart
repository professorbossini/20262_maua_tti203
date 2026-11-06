import 'package:mysql_dart/mysql_dart.dart';
import 'app_config.dart';

// Criar o pool de conexões
MySQLConnectionPool criarPool(AppConfig config){
  return MySQLConnectionPool(
    host: config.dbHost,
    port: config.dbPort,
    userName: config.dbUser,
    password: config.dbPassword,
    databaseName: config.dbName,
    maxConnections: config.dbPoolSize,
    // Dentro da rede privada do Docker o tráfego não sai da máquina, então o
    // TLS é dispensável
    secure: false,
    // Necessário porque no MySQL 8 a autenticação sem TLS precisa de acesso
    // à chave pública
    allowPublicKeyRetrieval: true,
  );
}

// Aguardar o banco ficar disponível
Future<void> aguardarBanca(
  MySQLConnectionPool pool, {
    int tentativas = 30,
    Duration intervalo = const Duration(seconds: 2),
  }) async {
    for(var tentativa = 1; tentativa <= tentativas; tentativa++){
      try{
        await pool.execute('SELECT 1');
        return;
      }catch(_){
        if(tentativa == tentativas) rethrow;
        await Future<void>.delayed(intervalo);
      }
    }
  }