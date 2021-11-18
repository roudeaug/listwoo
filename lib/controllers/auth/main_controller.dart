import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:listwoo/pages/splash_screen_page.dart';

// Permet de lancer l'affichage pour les utilisateurs authentifiés
class MainController extends StatefulWidget {
  const MainController({Key? key}) : super(key: key);

  @override
  _MainControllerState createState() => _MainControllerState();
}

class _MainControllerState extends State<MainController> {
  @override
  Widget build(BuildContext context) {
    return const SplashScreenPage();
  }
}
