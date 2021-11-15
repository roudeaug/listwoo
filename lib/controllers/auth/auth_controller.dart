import 'package:flutter/material.dart';
import 'package:listwoo/pages/auth_off/landing_page.dart';

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
