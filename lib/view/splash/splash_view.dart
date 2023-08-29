import 'dart:async';
import 'package:flutter/material.dart';
import '../../res/constants.dart';
import '../home/home.dart';
import '../intro/components/animated_text_components.dart';
import 'components/animated_loading_text.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedImageContainer(
              width: 200,
              height: 200,
            ),
            SizedBox(
              height: defaultPadding,
            ),
            AnimatedLoadingText(),
          ],
        ),
      ),
    );
  }
}
