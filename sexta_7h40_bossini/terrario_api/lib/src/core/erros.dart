sealed class ErroApp implements Exception{
  final String mensagem;
  const ErroApp(this.mensagem); 
  @override
  String toString() => '$runtimeType: $mensagem';
}
//404 Not found
class NaoEncontrado extends ErroApp{
  const NaoEncontrado(super.mensagem);
}

//422
class ErroValidacao extends ErroApp{
  const ErroValidacao(super.mensagem, [this.campos = const {}]);
  final Map<String, String> campos;
}
// //409
class Conflito extends ErroApp{
  const Conflito(super.mensagem);  
}
// //400
class RequisicaoInvalida extends ErroApp{
  const RequisicaoInvalida(super.mensagem);
}