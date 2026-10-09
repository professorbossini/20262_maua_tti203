/// Biomas aceitos pelo catálogo. O enum garante, em tempo de compilação,
/// que nenhum ponto do código invente um valor fora da lista.
enum Bioma {
  tropical,
  desertico,
  temperado,
  musgo;

  /// Converte o texto vindo do JSON ou do banco em um valor do enum.
  /// Devolve null quando o texto não corresponde a nenhum bioma conhecido,
  /// deixando a decisão sobre o erro para a camada de validação.
  static Bioma? porNome(String? nome) {
    if (nome == null) return null;
    final alvo = nome.trim().toLowerCase();

    for (final bioma in Bioma.values) {
      if (bioma.name == alvo) return bioma;
    }

    return null;
  }
}

/// Um terrário do catálogo.
class Terrario {
  const Terrario({
    this.id,
    required this.apelido,
    required this.bioma,
    required this.umidadeAlvo,
    required this.volumeLitros,
    required this.dataMontagem,
    this.criadoEm,
    this.atualizadoEm,
  });

  /// Nulo enquanto o terrário ainda não foi persistido.
  final int? id;
  final String apelido;
  final Bioma bioma;
  final int umidadeAlvo;
  final double volumeLitros;
  final DateTime dataMontagem;
  final DateTime? criadoEm;
  final DateTime? atualizadoEm;
}
