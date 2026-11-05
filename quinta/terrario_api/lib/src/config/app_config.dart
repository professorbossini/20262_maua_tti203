// Criar uma configuração do ambiente onde a aplicação será executada
// usando como base as regras de negócio / variáveis carregadas em env.dart

import 'env.dart';

class AppConfig{

  const AppConfig({
    required this.appEnv,
    required this.serverPort,
    required this.logLevel,
    required this.dbHost,
    required this.dbPort,
    required this.dbName,
    required this.dbUser,
    required this.dbPassword,
    required this.dbPoolSize,
  });

  final String appEnv;
  final int serverPort;
  final String logLevel;

  final String dbHost;
  final int dbPort;
  final String dbName;
  final String dbUser;
  final String dbPassword;
  final int dbPoolSize;

  // Verdadeiro quando a aplicação roda em produção; usada para decidir o nível
  // de detalhe das mensagens de erro devolvidas ao cliente
  bool get producao => appEnv == 'production';

  // factory = construtor que não é obrigado a criar uma nova instância;
  // ele executa o código antes de criar um objeto e pode guardar os valores 
  // em memória (cache)
  factory AppConfig.fromEnv() {
    final config = AppConfig(
      appEnv:Env.opcional('APP_ENV','development'),
      serverPort:Env.inteiro('SERVER_PORT',8080),
      logLevel: Env.opcional('LOG_LEVEL','info'),
      dbHost: Env.obrigatoria('DB_HOST'),
      dbPort: Env.inteiro('DB_PORT',3306),
      dbName: Env.obrigatoria('DB_NAME'),
      dbUser: Env.obrigatoria('DB_USER'),
      dbPassword: Env.obrigatoria('DB_PASSWORD'),
      dbPoolSize: Env.inteiro('DB_POOL_SIZE',10),
    );

    // serverPort deve estar dentro de uma faixa
    if(config.serverPort < 1 || config.serverPort > 65535){
      throw StateError('SERVER_PORT fora da faixa válida: $config.serverPort');
    }
    // poolSize tem que ser pelo menos
    if(config.dbPoolSize < 1){
      throw StateError('DB_POOL_SIZE deve ser pelo menos 1');
    }

    return config;
  }

  // Representação textual para o objeto config
  @override
  String toString() =>
    'AppConfig(appEnv: $appEnv, serverPort: $serverPort,'
    'db: $dbUser@$dbHost:$dbPort/$dbName, pool: $dbPoolSize)';
}