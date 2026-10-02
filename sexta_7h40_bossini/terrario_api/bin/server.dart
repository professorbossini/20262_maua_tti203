import 'dart:io';

import 'package:terrario_api/src/config/app_config.dart';

void main(){
  final config = AppConfig.fromEnv();
  stdout.writeln(config);
  stdout.writeln('Porta lida: ${config.serverPort}');
}