sealed class ErroApp implements Exception{
  const ErroApp(this.mensagem);
  final String mensagem;

  @override
  String toString() => '$runtimeType: $mensagem';
}

class NaoEncontrado extends ErroApp{
  const NaoEncontrado(super.mensagem);
}

class ErroValidacao extends ErroApp{
  const ErroValidacao(super.mensagem, [this.campos = const {}]);
  final Map<String, String> campos;
}

class Conflito extends ErroApp{
  const Conflito(super.mensagem);
}

class RequisicaoInvalida extends ErroApp{
  const RequisicaoInvalida(super.mensagem);  
}


