import 'package:flutter/material.dart';
import 'loginScreen.dart'; // Import de la page de connexion


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(), // Démarrer avec la page de connexion
    );
  }
}