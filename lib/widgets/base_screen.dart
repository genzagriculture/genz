import 'package:yoser/screens/contact_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:yoser/screens/home_screen.dart';
import 'package:yoser/screens/about_screen.dart';
import '../widgets/custom_bottom_nav_bar.dart';

class BaseScreen extends StatelessWidget {
  final int currentIndex;
  final Widget child;
  final bool showBottomNavBar; // Show bottom nav bar
  final bool shouldNavigate; // Determine whether to navigate or not

  const BaseScreen({
    Key? key,
    required this.currentIndex,
    required this.child,
    this.showBottomNavBar = true,
    this.shouldNavigate = true, // Default to true
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: showBottomNavBar ? CustomBottomNavBar(
        currentIndex: currentIndex,
        onTap: (index) {
          if (shouldNavigate) {
            if (index == 0) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            } else if (index == 1) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => AboutScreen()),
              );
            }else if (index == 2) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => ContactListScreen()),
              );
            }
          }
        },
      ) : null,
    );
  }
}
