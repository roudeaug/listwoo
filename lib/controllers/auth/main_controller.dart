import 'package:flutter/material.dart';
import 'package:listwoo/pages/auth_on/splash_screen_page.dart';

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
