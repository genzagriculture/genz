import 'package:flutter/material.dart';
import 'package:yoser/screens/contact_list_screen.dart';
import 'package:yoser/screens/home_screen.dart';
import 'package:yoser/screens/about_screen.dart';
import 'package:yoser/screens/personnalisation_screen.dart';
import 'package:yoser/screens/panier_screen.dart';
import 'package:yoser/widgets/custom_bottom_nav_bar.dart';

class BaseScreen extends StatelessWidget {
  final int currentIndex;
  final Widget child;
  final bool showBottomNavBar;
  final bool shouldNavigate;

  const BaseScreen({
    Key? key,
    required this.currentIndex,
    required this.child,
    this.showBottomNavBar = true,
    this.shouldNavigate = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: showBottomNavBar
          ? CustomBottomNavBar(
              currentIndex: currentIndex,
              onTap: (index) {
                if (shouldNavigate) {
                  // Gérer la navigation en fonction de l'index de la barre de navigation
                  switch (index) {
                    case 0:
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const HomeScreen()),
                      );
                      break;
                    case 1:
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => AboutScreen()),
                      );
                      break;
                    case 2:
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => ContactListScreen()),
                      );
                      break;
                    case 3:
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => PanierScreen()),
                      );
                      break;
                   
                  }
                }
              },
            )
          : null,
    );
  }
}
