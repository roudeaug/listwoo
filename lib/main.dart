import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:listwoo/controllers/auth/auth_controller.dart';
import 'package:listwoo/controllers/auth/main_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const ListwooApp());
}

class ListwooApp extends StatelessWidget {
  const ListwooApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Listwoo',
      debugShowCheckedModeBanner: false,
      home: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.userChanges(),
          builder: (BuildContext context, snapshot) {
            return (snapshot.hasData) ? const MainController() : const AuthController();
          }
      ),
    );
  }
}
