import 'package:flutter/material.dart';
import 'package:yoser/screens/contact_list_screen.dart';
import 'screens/loginScreen.dart'; // Import de la page de connexion


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContactListScreen(), // Démarrer avec la page de connexion
    );
  }
}