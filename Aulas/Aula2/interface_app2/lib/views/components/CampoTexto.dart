import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  TextEditingController _textEditingController =
      TextEditingController(); //instanciar o objeto para controlar o campo de texto
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(labelText: "Digite um valor: "),
              maxLength: 5,
              style: TextStyle(
                fontSize: 30,
                color: Colors.red,
              ),
              controller: _textEditingController, //controlador do nosso campo de texto
              onChanged: (String texto) {
                print("Texto digitado: " + texto);
              },
            ),
          ),
          ElevatedButton(
            child: Text("Salvar"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
            ),
            onPressed: () {
              print("Texto digitado: " + _textEditingController.text);
            },
          ),
        ],
    );
  }
}
