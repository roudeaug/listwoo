import 'package:flutter/material.dart';
import 'package:listwoo/pages/landing_page.dart';

void main() {
  runApp(const ListwooApp());
}

class ListwooApp extends StatelessWidget {
  const ListwooApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Listwoo',
        debugShowCheckedModeBanner: false,
        home: LandingPage()
      );
  }
}
