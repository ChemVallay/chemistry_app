import 'dart:async';

import 'package:chemvalley_app/core/extensions/plugin_sizedbox.dart';
import 'package:flutter/material.dart';

import '../../../constants/assets.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 6), () {
      Navigator.pushNamed(context, '/SignUp');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Assets.imageChemvallayApp,
              height: 250,
              width: 250,
              fit: BoxFit.cover,
            ),
            25.getH,
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
