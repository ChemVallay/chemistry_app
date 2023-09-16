import 'package:chemvalley_app/core/extensions/plugin_sizedbox.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        //        borderRadius: BorderRadius.circular(),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top:20.0),
        child: Row(
          children: [
            
            const Text('Welcome Mahmoud Hafez '
                '\n To'
                '\n Chemvalley'
                '\n Chemvalley Is a Mystery And We Have a Clue'),
            OutlinedButton(
              onPressed: () => {},
              // style: OutlinedButton.styleFrom(
              //   padding: EdgeInsets.zero,
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(2),
              //   ),
              // ),
              child: const Icon(Icons.notifications),
            ),
          ],
        ),
      ),
    );
  }
}
