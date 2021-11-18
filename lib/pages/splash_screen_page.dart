import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:listwoo/animations/delayed_animation.dart';
import 'package:listwoo/config/color_chart.dart';
import 'package:listwoo/config/config.dart';
import 'package:listwoo/pages/auth/sign_in_page.dart';

import 'home_page.dart';

//Page de lancement de l'application si utilisateur authentifié
class SplashScreenPage extends StatefulWidget {
  static const routeName = '/splashScreen';

  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  // Lance la page d'acceuil après un lapse de temps défini dans config/config.dart
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: Config.splashScreenDuration),
      () => FirebaseAuth.instance.userChanges().listen((User? user) {
        if (user == null) {
          Navigator.pushNamed(context, SignInPage.routeName);
        } else {
          Navigator.pushNamed(context, HomePage.routeName);
        }
      }),
    );
  }

  // Eléments constitutifs de la page
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorChart.background,
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        DelayedAnimation(
                            delay: 1000,
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 40),
                              height: 230,
                              child: SvgPicture.asset(
                                  'assets/logos/logo_label.svg'),
                            )),
                        DelayedAnimation(
                          delay: 2000,
                          child: SizedBox(
                              height: 200,
                              child: Image.asset('assets/images/img4.png')),
                        )
                      ],
                    ),
                  ]),
            ),
          ),
        );
      }),
    );
  }
}
