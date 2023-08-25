import 'package:chemvalley_app/core/extensions/plugin_sizedbox.dart';
import 'package:flutter/material.dart';

class SingaleView extends StatelessWidget {
  const SingaleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Text.rich(TextSpan(children: [
          TextSpan(
            text: 'W E L C O M E  T O',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              // fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: 'CHEMVALLEY',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ])),
        const Text('Welcome to our chemistry  app, where knowledge'
            'and experiment meet innovation. '
            'Step into the fascinating world of chemistry and embark on a'
            'journey of discovery with us'),
        30.getH,
        Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.home),
                  Column(children: [
                    Text(
                      'Go to the Home page',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Start to explore your Chemistry by app',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ])
                ])),
        Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.help),
                  Column(children: [
                    Text(
                      'You need the help ?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Support team can help you 24/h',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ])
                ])),
      ],
    ));
  }
}
