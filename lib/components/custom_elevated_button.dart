import 'package:flutter/material.dart';
import 'package:listwoo/config/color_chart.dart';
import 'package:listwoo/controllers/auth/auth_controller.dart';
import 'package:listwoo/pages/auth/auth_off/sign_in_page.dart';

class CustomElevatedButton extends StatefulWidget {
  final String content;
  final String action;
  final Color color;

  const CustomElevatedButton(
      {required this.content, required this.action, required this.color});

  @override
  _CustomElevatedButtonState createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 42,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: ColorChart.accent, shape: const StadiumBorder()),
        child: Text(widget.content),
        // Lance la page de connexion pour un utilisateur non authentifié
        onPressed: () {
          AuthControllerAction authRouter = AuthControllerAction();
          authRouter.router(this.context, widget.action);
        },
      ),
    );
  }
}
