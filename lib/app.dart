import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'route.dart';
import 'view/screens/home/cubit/nav_bar_cubit.dart';
import 'view/screens/onboarding/cubit/on_boarding_view_cubit.dart';
import 'view/screens/splash/splash_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => OnBoardingViewCubit([]),
        ),
        BlocProvider(
          create: (context) => NavBarCubit(),
        ),
      ],
      child: const MaterialApp(
        home: SplashView(),
        onGenerateRoute: Routes.generateRoute,
        initialRoute: '/layout',
        debugShowCheckedModeBanner: false,
        //      theme: ThemeData().copyWith(primaryColor: Colors.blue), // TODO: remove this line when the app is ready to be
        //      theme: ThemeData().copyWith(primaryColor: Colors.blue), // TODO: remove this line when the app is ready to be
        //      theme: ThemeData().copyWith(primaryColor: Colors.red), // TODO remove this line when you want to use the app with
        //      theme: ThemeData(primarySwatch: Colors.blue), // TODO: Add custom theme data here!
        //      darkTheme: ThemeData.dark() ,  //TODO: Add Dark Mode support for the app (optional).
        //    supportedLocales: [Locale('en', ''), Locale('ar')],   ///TODO: Add Localization Support to your App (Optional).
        //    supportedLocales: [Locale('en'), Locale('ar')],   //TODO: Add Localization Support to your App (Optional).
        //      builder: ExtendedNavigator<Router>(builder: (_, extendedNav) => Navigator(onGenerateRoute: (_) => extendedNav!.currentConfiguration)),
        //        themeMode: ThemeMode.,   //TODO: Add Custom Theme mode to switch between light and dark modes of the application.(Optional)
      ),
    );
  }
}
