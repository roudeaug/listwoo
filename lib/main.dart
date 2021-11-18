import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'controllers/routing_controller.dart';

void main() async {
  //Initialisation de la connexion
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  //Lancement de l'application
  runApp(const ListwooApp());
}

class ListwooApp extends StatelessWidget {
  const ListwooApp({Key? key}) : super(key: key);

  // Eléments constitutifs de la page
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Listwoo',
      debugShowCheckedModeBanner: false,
      //Gestion de la navigation dans l'application
      onGenerateRoute: RoutingController.generateRoute,
    );
  }
}
