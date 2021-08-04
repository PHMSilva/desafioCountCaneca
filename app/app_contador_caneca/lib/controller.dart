import 'dart:convert';

import 'package:http/http.dart' as http;

class Requisicao {
  Future<void> atualizarContagem(String nXicaras) async {
    var urlAtualizacao = Uri.parse('http://localhost');
    final response = await http.post(
      urlAtualizacao,
      headers: {
        "Accept": "application/json",
        "content-type": "application/json"
      },
      body: json.encode({
        'nchicara': nXicaras,
      }),
    );
  }

  Future<void> imprimir(int nxicaras) async {
    var urlAtualizacao = Uri.parse(
        //'http://localhost/api/foo',
        'http://10.0.2.2/api/fot/$nxicaras');
    print("1");
    final response = await http.get(
      urlAtualizacao,
    );
    print("2");
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      print("deu bom");
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
    print("passou");
    var responseBody = json.decode(response.body);
    print("passou2");
    print(" resposta aqui " + responseBody.toString());
  }
}
