import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:listwoo/config/color_chart.dart';

class CustomTextField extends StatefulWidget {
  final String content;
  final IconData icon;
  final Color color;

  const CustomTextField({
    required this.content,
    required this.icon,
    required this.color
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 42,
      margin: const EdgeInsets.only(bottom: 20.0),
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
      child: TextField(
        autocorrect: true,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          prefixIcon: Padding(
              padding: const EdgeInsetsDirectional.only(
                  start: 25.0, top: 8.0, end: 20.0),
              child: FaIcon(widget.icon, color: ColorChart.white)),
          hintText: widget.content,
          hintStyle: const TextStyle(
              fontWeight: FontWeight.w400, color: ColorChart.white),
          border: InputBorder.none,
          isCollapsed: true,
          contentPadding: const EdgeInsets.all(10.0),
        ),
      ),
    );
  }
}
