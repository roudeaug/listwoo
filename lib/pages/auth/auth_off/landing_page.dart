import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:listwoo/animations/delayed_animation.dart';
import 'package:listwoo/components/custom_elevated_button.dart';
import 'package:listwoo/config/color_chart.dart';
import 'package:listwoo/pages/auth/auth_off/sign_in_page.dart';

// Page de chargement de l'application si l'utilisateur n'est pas auhtentifié
class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

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
                                height: 250,
                                child: Image.asset('assets/images/img4.png')),
                          )
                        ],
                      ),
                      const DelayedAnimation(
                        delay: 2500,
                        child: CustomElevatedButton(
                          content: 'COMMENCER', 
                          action: 'SignInPage', 
                          color: ColorChart.accent)
                      ),
                    ]),
              ),
            ),
          );
        }));
  }
}
