import 'package:flutter/material.dart';

import 'core/error/page/not_found_screen.dart';
import 'view/screens/home/layout.dart';
import 'view/screens/signin/view_signIn.dart';
import 'view/screens/signup/view_signup.dart';
import 'view/screens/splash/splash_view.dart';

class Routes {
  // static const String home = '/';
  //static const String details = '/details';

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => const SplashView());
      case "/SignUp":
        return MaterialPageRoute(builder: (_) => const ViewSignUp());
      case "/SignIn":
        return MaterialPageRoute(builder: (_) => const ViewSignIn());
      case "/layout":
        return MaterialPageRoute(builder: (_) => const LayoutHome());
        default:
        return MaterialPageRoute(builder: (_) => const NotFoundScreen());
    }
  }
}
