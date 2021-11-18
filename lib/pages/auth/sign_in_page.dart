import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:listwoo/components/custom_elevated_button.dart';
import 'package:listwoo/config/color_chart.dart';
import 'package:listwoo/components/custom_text_field.dart';
import 'package:listwoo/pages/auth/forgot_password_page.dart';
import 'package:listwoo/pages/home_page.dart';

// Page de connexion si l'utilisateur n'est pas authentifié
class SignInPage extends StatelessWidget {
  static const routeName = '/auth/signIn';

  const SignInPage({Key? key}) : super(key: key);

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
              child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 60, horizontal: 40),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // ignore: prefer_const_constructors
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: const Text('Ravie de vous retrouver !',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'BerlinSansFB',
                                fontSize: 35,
                                fontWeight: FontWeight.w400,
                                color: ColorChart.primary,
                                overflow: TextOverflow.fade)),
                      ),
                      Container(
                          height: 230,
                          child: Image.asset('assets/images/img1.png'),
                          margin: const EdgeInsets.only(bottom: 20.0)),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const CustomTextField(
                            content: 'Identifiant',
                            icon: FontAwesomeIcons.solidEnvelope,
                            color: ColorChart.primary,
                            marginBottom: 20.0,
                          ),
                          const CustomTextField(
                            content: 'Mot de passe',
                            icon: FontAwesomeIcons.unlock,
                            color: ColorChart.primary,
                            marginBottom: 20.0,
                          ),
                          const CustomElevatedButton(
                            content: 'SE CONNECTER',
                            color: ColorChart.secondary,
                            routeName: HomePage.routeName,
                            marginBottom: 20.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20.0),
                            child: Text('OU',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto(
                                  textStyle: const TextStyle(
                                      color: ColorChart.primary,
                                      letterSpacing: 2),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                )),
                          ),
                          const CustomElevatedButton(
                            content: 'S' 'INSCRIRE',
                            color: ColorChart.accent,
                            routeName: SignInPage.routeName,
                            marginBottom: 20.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: RichText(
                                text: TextSpan(
                                    text: 'Mot de passe oublié',
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.pushNamed(context,
                                            ForgotPasswordPage.routeName);
                                      },
                                    style: const TextStyle(
                                        color: ColorChart.primary))),
                          ),
                        ],
                      )
                    ]),
              ),
            ),
          );
        },
      ),
    );
  }
}
