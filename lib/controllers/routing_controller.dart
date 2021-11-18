import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:listwoo/pages/auth/forgot_password_page.dart';
import 'package:listwoo/pages/auth/sign_in_page.dart';
import 'package:listwoo/pages/splash_screen_page.dart';
import 'package:listwoo/pages/error_page.dart';
import 'package:listwoo/pages/home_page.dart';

class RoutingController {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Génération des différentes routes de l'application
    switch (settings.name) {

      // Page de démarrage de l'application
      case '/':
        return MaterialPageRoute(
            builder: (context) => const SplashScreenPage());

      // Utilisateur non authentifié
      case SignInPage.routeName:
        return MaterialPageRoute(builder: (context) => const SignInPage());

      // Mot de passe oublié
      case ForgotPasswordPage.routeName:
        return MaterialPageRoute(builder: (context) => const ForgotPasswordPage());

      // Page d'acceuil
      case HomePage.routeName:
        return MaterialPageRoute(builder: (context) => const HomePage());
    }

    // Par default, affichage de la page d'erreur
    return MaterialPageRoute(builder: (context) => const ErrorPage());
  }
}
