enum Bioma{
  tropical,
  desertico,
  temperado,
  musgo,
  arido;

  static Bioma? porNome(String? nome){
    if(nome == null) return null;
    final alvo = nome.trim().toLowerCase();
    for (final bioma in Bioma.values){
      if(bioma.name == alvo) return bioma;
    }
    return null;
  }
}

class Terrario{
 
}