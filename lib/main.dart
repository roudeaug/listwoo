import 'package:flutter/material.dart';
import 'package:listwoo/config/color_chart.dart';

void main() {
  runApp(const ListwooApp());
}

class ListwooApp extends StatelessWidget {
  const ListwooApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Listwoo',
        debugShowCheckedModeBanner: false,
        home: Container(color: ColorChart.background,),
      );
  }
}
