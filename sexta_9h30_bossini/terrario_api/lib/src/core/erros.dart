sealed class ErroApp implements Exception{
  const ErroApp(this.mensagem);
  final String mensagem;
  @override
  String toString() {
    return '$runtimeType: $mensagem';
  }
}



