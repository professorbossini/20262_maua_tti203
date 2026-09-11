import 'env.dart';
class AppConfig{
  final String appEnv;
  final int serverPort;
  final String logLevel;
  final String dbHost;
  final int dbPort;
  final String dbName;
  final String dbUser;
  final String dbPassword;
  final int dbPoolSize;

  const AppConfig({})
}

def somar(a, b):
  return a + b

somar(1, 2)

somar(a=2,b=2)
somar(b=2,a=1)