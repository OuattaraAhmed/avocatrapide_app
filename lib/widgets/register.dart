import 'package:flutter/material.dart';
// import 'login.dart';

class RegisterAvocat extends StatelessWidget {
  String email = '';
  String password = '';
  String confPassword = '';

  final _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prendre un RDV'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20.0),
          padding: EdgeInsets.all(20.0),
          child: Form(
            key: _keyForm,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
             Card(
               color: Colors.teal,
               child: Image.asset('assets/images/rdv.png'),

               
             ),
             SizedBox(height: 30.0),
             

                // TextFormField(
                //   decoration: InputDecoration(
                //     labelText: 'Nom et prenoms',
                //     border: OutlineInputBorder(),
                //   ),
                //   validator: (val) => val.isEmpty ? 'Nom et prenoms' : null,
                //   onChanged: (val) => email = val,
                // ),
                // SizedBox(height: 10.0),
                // TextFormField(
                //   decoration: InputDecoration(
                //     labelText: 'Email',
                //     border: OutlineInputBorder(),
                //   ),
                //   validator: (val) => val.isEmpty ? 'Entrez votre email' : null,
                //   onChanged: (val) => email = val,
                // ),
                // SizedBox(height: 10.0),
                //                 TextFormField(
                //   decoration: InputDecoration(
                //     labelText: 'Numéro de telephone',
                //     border: OutlineInputBorder(),
                //   ),
                //   validator: (val) => val.isEmpty ? 'Numéro de telephone' : null,
                //   onChanged: (val) => email = val,
                // ),
                // SizedBox(height: 10.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Motif',
                    border: OutlineInputBorder(),
                  ),
                  validator: (val) => val.isEmpty ? 'Entrer votre motif' : null,
                  onChanged: (val) => email = val,
                ),
                SizedBox(height: 10.0),
                
                // TextFormField(
                //   decoration: InputDecoration(
                //       labelText: 'Mot de passe', border: OutlineInputBorder()),
                //   obscureText: true,
                //   validator: (val) => val.length < 6
                //       ? 'Vous devez fornir un mot de passe avec 6 ou plus caractere'
                //       : null,
                //   onChanged: (val) => password = val,
                // ),
                SizedBox(height: 10.0),
                // TextFormField(
                //   decoration: InputDecoration(
                //       labelText: 'Confirmez le mot de passe',
                //       border: OutlineInputBorder()),
                //   onChanged: (val) => confPassword = val,
                //   validator: (val) => confPassword != password
                //       ? 'Confirmez le mot de passe'
                //       : null,
                //   obscureText: true,
                // ),
                SizedBox(height: 10.0),
                OutlineButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  onPressed: () {
                    if (_keyForm.currentState.validate()) {
                      Navigator.pushReplacementNamed(context, '/');
                    }
                  },
                  borderSide: BorderSide(width: 1.0, color: Colors.green),
                  child: Text(
                    'Envoyer',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
                SizedBox(height: 10.0),
                // RaisedButton(
                //   shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(20.0),
                //   ),
                //   color: Colors.blue,
                //   onPressed: () {
                //     if (_keyForm.currentState.validate()) {
                //       Navigator.pushReplacementNamed(context, '/');
                //     }
                //   },
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
