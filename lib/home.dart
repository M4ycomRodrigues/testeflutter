import 'package:testeflutter/telacliente.dart';
import 'package:flutter/material.dart';
import 'package:testeflutter/telacliente.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo abre outras telas"),
        actions: [
          IconButton(
              onPressed:(){_novaTela(context, TelaCliente());},
              icon: Icon(
                Icons.access_alarms
              ))
        ],
      ),
    );
  }

  void _novaTela(BuildContext context, page) {
    Navigator.push(context, MaterialPageRoute(builder:
        (BuildContext context){
      return page;
    }
    ));
  }
}
