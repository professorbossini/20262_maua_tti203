// Classe base de todas as falhas previsíveis da aplicação
// sealed = os possíveis subtipos da classe são predefinidos
// e descritos no mesmo arquivo
sealed class ErroApp implements Exception {
  const ErroApp(this.mensagem);
  final String mensagem;

  @override
  String toString() => '$runtimeType: $mensagem';
}

// O recurso pedido não existe, erro 404
class NaoEncontrado extends ErroApp {
  const NaoEncontrado(super.mensagem);
}

// A requisição foi entendida, mas viola alguma regra de negócio, erro 422
// O mapa [campos] associa o nome de cada campo inválido à sua explicação
// permitindo que o formulário do cliente destaque o que corrigir
class ErroValidacao extends ErroApp {
  const ErroValidacao(super.mensagem, [this.campos = const {}]);
  final Map<String, String> campos;
}

// A operacao conflita com o estado atual dos dados, erro 409
class Conflito extends ErroApp {
  const Conflito(super.mensagem);
}

// O corpo enviado não pôde ser interpretado, erro 400
class RequisicaoInvalida extends ErroApp {
  const RequisicaoInvalida(super.mensagem);
}
