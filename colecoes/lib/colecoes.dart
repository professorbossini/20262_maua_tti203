int calculate() {
  return 6 * 7;
}

int soma(List<String> arguments) {
  var soma = 0;
  for (String valorStr in arguments) {
    soma += int.tryParse(valorStr) ?? 0;
  }
  return soma;
}
