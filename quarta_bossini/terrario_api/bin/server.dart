import 'dart:io';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:terrario_api/src/config/app_config.dart';
Future<void> main() async{

  final config = AppConfig.fromEnv();
  
  Response handler(Request request){
    return Response.ok('Api de terrario no ar\n');
  }

  final servidor = await shelf_io.serve(
    handler,
    InternetAddress.anyIPv4,
    config.serverPort
  );

  stdout.writeln('Servidor ouvindo em http://localhost:${servidor.port}');
  stdout.writeln(config);
  
}