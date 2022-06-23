import 'package:flutter/material.dart';

class Lista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[800],
          title: Text('MINHAS DÍVIDAS'),
          actions: [
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () => Navigator.pushReplacementNamed(context, '/'),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.teal[800],
          onPressed: () => Navigator.pushNamed(context, '/cadastro'),
        ),
        body: ListView.builder(
            itemCount: 1,
            itemBuilder: (ctx, index) {
              return ListTile(
                leading: Icon(Icons.attach_money_outlined, color: Colors.teal[800]),
                title: Text("PRESTAÇÃO CASA",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.teal[800],
                    )),
                subtitle: Text("2.200",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey[400],
                    )),
              );
            }));
  }
}
