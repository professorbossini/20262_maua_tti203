sealed class ErroApp implements Exception{
  const ErroApp(this.mensagem);
  final String mensagem;

  @override
  String toString() {
    return '$runtimeType: $mensagem';
  }
}
//404
class NaoEncontrado extends ErroApp{
  const NaoEncontrado(super.mensagem);
}

//422
class ErroValidacao extends ErroApp{
  const ErroValidacao(super.mensagem, [this.campos = const {}]);
  final Map<String, String> campos;
}

//409 
class Conflito extends ErroApp{
  const Conflito(super.mensagem);
}

//400
class RequisicaoInvalida extends ErroApp{
  const RequisicaoInvalida(super.mensagem);
}