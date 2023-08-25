import 'package:chemvalley_app/core/extensions/plugin_sizedbox.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/theme.dart';

class ViewSignIn extends StatefulWidget {
  const ViewSignIn({super.key});

  @override
  State<ViewSignIn> createState() => _ViewSignInState();
}

class _ViewSignInState extends State<ViewSignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Themes.colorApp,
      //Theme.of(context).canvasColor,
      body: Column(
        children: [
          Image.asset(
            "",
            width: 288,
            height: 288,
          ),
          120.getH,
          Container(
           // width: 378,
           // height: 407,
           padding:EdgeInsets.all(25),
            decoration: const BoxDecoration(
              color: Color(0xffEEEEEE),
            ),
            child: Center(
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Sign In',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    20.getH,
                    TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter Email',
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          return null;
                        }),
                    20.getH,
                    TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter Password',
                        ),
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          return null;
                        }),
                    20.getH,
                    ElevatedButton(
                      style:ElevatedButton.styleFrom(
                        backgroundColor: Themes.colorApp,
                      ),
                      onPressed: () {},
                      child: const Text('Login'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}