import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:listwoo/config/color_chart.dart';

class CustomElevatedButton extends StatefulWidget {
  final String content;
  final Color color;
  final String routeName;
  final double marginBottom;

  const CustomElevatedButton({
    required this.content,
    required this.color,
    required this.routeName,
    required this.marginBottom
  });

  @override
  _CustomElevatedButtonState createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 42,
      margin: EdgeInsets.only(bottom: widget.marginBottom),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(40.0)),
        color: ColorChart.primary,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(1, 3),
          ),
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: widget.color, shape: const StadiumBorder()),
        child: Text(
          widget.content,
          style: const TextStyle(
            fontSize: 16.0), 
            overflow: TextOverflow.fade),
        // Génère la route associée au paramètre indiqué
        onPressed: () {
          Navigator.pushNamed(context, widget.routeName);
        },
      ),
    );
  }
}
