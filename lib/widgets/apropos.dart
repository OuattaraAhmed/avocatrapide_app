import 'package:flutter/material.dart';

class Propos extends StatelessWidget {
  String email = '';
  String password = '';
  String confPassword = '';

  final _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('A PROPOS'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        
        child: Container(
          height: 200.0,
          child: Center(child: Text("Depuis notre Application, nous ne collectons aucune donnée personnelle (par exemple: les noms, les adresses, les numéros de téléphone, les adresses de courrier électronique ou les adresses IP complètes).",
          style: TextStyle(fontSize: 20.0),
          
          )),
        ),
      ),
    );
  }
}
