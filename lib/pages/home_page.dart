import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//Page d'acceuil de l'application une fois l'utilisateur authentifié
class HomePage extends StatelessWidget {
  static const routeName = '/home';

  const HomePage({Key? key}) : super(key: key);

  // Eléments constitutifs de la page
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Home")),
    );
  }
}
