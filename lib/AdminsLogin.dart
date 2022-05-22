import 'package:flutter/material.dart';

class AdminsLogin extends StatefulWidget {
  const AdminsLogin({Key? key}) : super(key: key);
  State<AdminsLogin> createState() => _AdminsLogin();
}

class _AdminsLogin extends State<AdminsLogin> {
  String value = '';
  final formKey = GlobalKey<FormState>();
  final emailController = new TextEditingController();
  final passwordController = new TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Connexion Admins'),
      ),
      body: Form(
        key: formKey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                value,
                style: TextStyle(fontSize: 20, color: Colors.indigo[900]),
              ),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Entrez votre e-mail',
                    icon: Icon(
                      Icons.email,
                      color: Colors.indigo[900],
                      size: 25,
                    )),
                keyboardType: TextInputType.emailAddress,
                autocorrect: true,
                autofocus: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Entrez votre email';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                    labelText: 'Mot de passe',
                    hintText: 'Entrez votre mot de passe',
                    icon: Icon(
                      Icons.password,
                      color: Colors.indigo[900],
                      size: 25,
                    )),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Entrez votre mot de passe';
                  }
                  return null;
                },
                keyboardType: TextInputType.text,
                obscureText: true,
              )
            ],
          ),
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
