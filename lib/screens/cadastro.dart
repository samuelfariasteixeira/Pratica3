import 'package:flutter/material.dart';

export 'cadastro.dart';

class Cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[800],
          title: Text('NOVA DÍVIDA'),
        ),
        body: Column(children: [
          TextField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                label: Text(
                  'DÍVIDA',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.teal[800],
                  ),
                )),
          ),
          TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              label: Text(
                'VALOR',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.teal[800],
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 24), child: ElevatedButton(child: Text('CADASTRAR'), style: ElevatedButton.styleFrom(primary: Colors.teal[800]), onPressed: () => Navigator.pushReplacementNamed(context, '/lista'))),
        ]));
  }
}
