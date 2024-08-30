import 'package:flutter/material.dart';

import 'screens/loginScreen.dart'; // Import de la page de connexion


import 'screens/loginScreen.dart';
import 'screens/categories_screen.dart'; // Import de la page de connexion


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

