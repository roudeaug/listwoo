import 'package:flutter/material.dart';
import 'package:listwoo/pages/auth/auth_off/landing_page.dart';
import 'package:listwoo/pages/auth/auth_off/sign_in_page.dart';

// Permet de lancer l'affichage pour les utilisateurs non authentifiés
class AuthController extends StatefulWidget {
  const AuthController({Key? key}) : super(key: key);

  @override
  _AuthControllerState createState() => _AuthControllerState();
}

class _AuthControllerState extends State<AuthController> {
  @override
  Widget build(BuildContext context) {
    return const LandingPage();
  }
}

class AuthControllerAction {

  void router(BuildContext context, String action) {
    switch (action) {
      case 'SignInPage':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SignInPage()),
        );
        break;
      default:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LandingPage()),
        );
        break;
    }
  }
}
