import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:listwoo/animations/delayed_animation.dart';
import 'package:listwoo/config/color_chart.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorChart.background,
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
             return SingleChildScrollView(
              child: ConstrainedBox(
              constraints: BoxConstraints(
              minHeight: constraints.maxHeight),
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 60, horizontal: 40),
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
                              child: SvgPicture.asset('assets/logos/logo_label.svg'),
                            )
                          ),
                          DelayedAnimation(
                            delay: 2000, 
                            child: SizedBox(
                              height: 250,
                              child: Image.asset('assets/images/img4.png')
                            ),
                          )
                        ],
                      ),
                      DelayedAnimation(
                        delay: 2500, 
                        child: SizedBox(
                          width: double.infinity,
                          height: 42,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: ColorChart.accent,
                              shape: const StadiumBorder()),
                            child: const Text("COMMENCER"),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ]
                  ),
                ),
              ),
            );
        })
    );
  }
}
