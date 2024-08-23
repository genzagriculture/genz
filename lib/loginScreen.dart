import 'package:flutter/material.dart';
import 'signup_screen.dart'; // Importez la page d'inscription
import 'home_screen.dart'; // Importez la page d'accueil

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';

  void _login() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Effectuer l'opération de connexion ici
      print("Email: $_email, Password: $_password");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Le texte centré en vert
              Center(
                child: Text(
                  'WELCOME TO OUR APPLICATION',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.green, // Texte en vert
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 30), // Espace entre le texte et le formulaire

              // Champ Email
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
                onSaved: (value) {
                  _email = value!;
                },
              ),
              SizedBox(height: 10), // Espace entre les champs de formulaire

              // Champ Password
              TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                onSaved: (value) {
                  _password = value!;
                },
              ),
              SizedBox(height: 20),

              // Bouton de Connexion
              ElevatedButton(
                onPressed: _login,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Bouton en vert
                ),
                child: Text('Login'),
              ),
              SizedBox(height: 20),

              // Bouton pour aller à la page d'inscription
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                  );
                },
                child: Text('Don\'t have an account? Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}