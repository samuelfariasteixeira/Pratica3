import 'package:flutter/material.dart';

export 'login.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.account_balance_rounded, size: 85, color: Colors.teal[800]),
          Text(
            'MYBANK',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.teal[800],
            ),
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                label: Text(
                  'DIGITE SEU E-MAIL',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.teal[800],
                  ),
                )),
          ),
          TextField(
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                label: Text(
                  'DIGITE SUA SENHA',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.teal[800],
                  ),
                )),
            obscureText: true,
          ),
          Padding(padding: EdgeInsets.only(top: 24), child: ElevatedButton(child: Text('ACESSAR MINHAS DÍVIDAS'), style: ElevatedButton.styleFrom(primary: Colors.teal[800]), onPressed: () => Navigator.pushReplacementNamed(context, '/lista'))),
        ],
      ),
    );
  }
}
