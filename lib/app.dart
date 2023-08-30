import 'package:flutter/material.dart';

import 'route.dart';
import 'view/screens/splash/splash_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashView(),
      onGenerateRoute: Routes.generateRoute,
      initialRoute: '/',
    );
  }
}
