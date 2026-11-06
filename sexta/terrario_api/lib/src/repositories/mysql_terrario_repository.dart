import 'package:mysql_dart/mysql_dart.dart';
import '../model/terrario.dart';
import 'terrario_repository.dart';

class MySqlTerrarioRepository implements TerrarioRepository {

  MySqlTerrarioRepository(this._pool);

  final MySQLConnectionPool _pool;

  // Colunas listadas em ordem explicita ao inves de SELECT *
  static const String _colunas = 'id, apelido, umidade_alvo, volume_litros,'
  'data_montagem, criado_em, atualizado_em';

  // Converte uma linha do resultado da consulta em uma entidade Terrario.
  Terrario _mapear(ResultSetRow linha){
    // assoc() transforma a linha em uma mapa especificado em .cast
    // ou seja, um Map<String, dynamic>
    final dados = linha.assoc().cast<String, String?>();
    return Terrario(
          id: int.parse(dados['id']!),
          apelido: dados['apelido']!,
          bioma: Bioma.porNome(dados['bioma'])!,
          umidadeAlvo: int.parse(dados['umidade_alvo']!),
          volumeLitros: double.parse(dados['volumelitros']!),
          dataMontagem: DateTime.parse(dados['data_montagem']!),
          criadoEm: DateTime.tryParse(dados['criado_em'] ?? ''),
          atualizadoEm: DateTime.tryParse(dados['atualizado_em'] ?? ''),
    );
  }
}