import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'models/image_model.dart';

import 'dart:convert';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int numeroImagens = 0;
  List<ImageModel> imagens = [];
  void obterImagem() async {
    var url = Uri.https('api.pexels.com', '/v1/search', {
      'query': 'people',
      'page': '1',
      'per_page': '1',
    });
    var req = http.Request('get', url);
    req.headers.addAll({'Authorization': 'coloque_sua_chave_aqui'});
    final result = await req.send();
    if (result.statusCode == 200) {
      http.Response.fromStream(result).then((response) {
        //          debugPrint(response.body);
        var decodedJSON = json.decode(response.body);
        var imagem = ImageModel.fromJSON(decodedJSON);
        debugPrint(imagem.toString());
        //Precisamos atualizar o state então não podemos simplesmente adicionar a imagem à lista
        // imagens.add(imagem);
        setState(() {
          imagens.add(imagem);
          numeroImagens++;
          debugPrint("Número de imagens: $numeroImagens");
        });
      });
    } else {
      debugPrint('Falhou!');
    }
  }

  @override
  Widget build(BuildContext context) {
    const Color c1 = Color.from(
      alpha: .5,
      red: 0.2588,
      green: 0.6471,
      blue: 0.9608,
    );
    var app = MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Minhas Imagens'),
          backgroundColor: c1,
          centerTitle: true,
        ), // Tem definir primordial inerro com shadow colok contexto pessoal de parâmetros, opa sem o fundo na realidade, tinham alteration AP2, o padrão era o padrão, com barra azul continuar na aula, se midia querem ser alterado contexto background color, diversas configura, pessoal, funcions no dar a gente funcpad cada uma delas, quando chamar, vai fazer algumas vinte, conjunto de valores de itens, padre fundamental do F1F em cima, ela imprime F1, a F2 retorna e imprime, e o F2 continua o print F4 exatamente o laclama, exige ali, então, executar UF quatro fundamentalmente e vai devolver sete vazio, parâmetro recebe ali algum elemento, ela recebe nada retorna e com os dom terminar, paramos na pint pessoal
        floatingActionButton: FloatingActionButton.extended(
          onPressed: obterImagem,
          //   setState(() => numeroImagens++);
          //   debugPrint("Número de imagens: $numeroImagens");
          // },
          label: const Text('Adicionar'),
          icon: const Icon(Icons.add),
        ),
        body: Text("Número de imagems: $numeroImagens"),

        //body: Center(child: Text('Hello World')),
      ),
    );
    return app;
  }
}
