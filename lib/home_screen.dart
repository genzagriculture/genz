import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String email;

  // Le constructeur pour passer l'email de l'utilisateur
  HomeScreen({required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        automaticallyImplyLeading: false, // Désactive le bouton "back"
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Bienvenue, $email',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Action ou navigation vers une autre page
              },
              child: Text('Explore'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Naviguer vers une autre page ou effectuer une autre action
              },
              child: Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}