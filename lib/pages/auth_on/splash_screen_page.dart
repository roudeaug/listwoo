import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:listwoo/animations/delayed_animation.dart';
import 'package:listwoo/config/color_chart.dart';
import 'package:listwoo/config/config.dart';

import '../home_page.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: Config.splashScreenDuration),
      ()=>Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorChart.background,
      body: LayoutBuilder(
          // ignore: dead_code
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
