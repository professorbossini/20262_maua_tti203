import 'package:mysql_dart/mysql_dart.dart';
import '../model/terrario.dart';
import 'terrario_repository.dart';

// essa classe implementa a interface TerrarioRepository, ou seja, deve
// implementar o corpo dos métodos abstratos assinados
class MySqlTerrarioRepository implements TerrarioRepository {
  
    MySqlTerrarioRepository(this._pool);

    final MySQLConnectionPool _pool;

    // Colunas listadas explicitamente em vez de SELECT *: assim a ordem e o 
    // conjunto de campos não mudam quando alguém alterar a tabela
    static const String _colunas = 'id, apelido, bioma, umidade_alvo, volume_litros, data_montagem, criado_em, atualizado_em';

    // Converter uma linha do resultado em uma entidade
    Terrario _mapear(ResultSetRow linha){
      // assoc() devolve Map<String, dynamic>
      final dados = linha.assoc().cast<String, String?>();
      return Terrario(
        id: int.parse(dados['id']!),
        apelido: dados['apelido']!,
        bioma: Bioma.porNome(dados['bioma'])!,
        umidadeAlvo: int.parse(dados['umidade_alvo']!),
        volumeLitros: double.parse(dados['volume_litros']!),
        dataMontagem: DateTime.parse(dados['data_montagem']!),
        criadoEm: DateTime.tryParse(dados['criado_em'] ?? ''),
        atualizadoEm: DateTime.tryParse(dados['atualizado_em'] ?? '')
      );
    }

    //overrides para escrever o corpo (tornar concreto) dos métodos abstratos
    //assinados na interface TerrarioRepository
}

