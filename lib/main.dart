import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:listwoo/controllers/auth/auth_controller.dart';
import 'package:listwoo/controllers/auth/main_controller.dart';

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
    return MaterialApp(
      title: 'Listwoo',
      debugShowCheckedModeBanner: false,
      //Gestion de l'affichage différencié en fonction su statut de connexion
      home: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.userChanges(),
          builder: (BuildContext context, snapshot) {
            return (snapshot.hasData) ? const MainController() : const AuthController();
          }
      ),
    );
  }
}
