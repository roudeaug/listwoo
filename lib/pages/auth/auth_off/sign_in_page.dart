import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:listwoo/config/color_chart.dart';
import 'package:listwoo/components/custom_text_field.dart';

// Page de connexion si l'utilisateur n'est pas authentifié
class SignInPage extends StatelessWidget {
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text('Ravie de vous retrouver !',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'BerlinSansFB',
                              fontSize: 35,
                              fontWeight: FontWeight.w400,
                              color: ColorChart.primary)),
                      SizedBox(
                        height: 230,
                        child: Image.asset('assets/images/img1.png'),
                      ),
                      const CustomTextField(
                        content: 'Identifiant', 
                        icon: FontAwesomeIcons.solidEnvelope,
                        color: ColorChart.primary
                      ),
                      const CustomTextField(
                        content: 'Mot de passe', 
                        icon: FontAwesomeIcons.unlock,
                        color: ColorChart.primary
                      ),
                    ]),
              ),
            ),
          );
        },
      ),
    );
  }
}
