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
      child: Row(
        children: [
          Text.rich(
            TextSpan(
              style: const TextStyle(),
              children: [
                const TextSpan(
                  text: ' Mahmoud Hafez ',
                ),
                const TextSpan(
                  text: 'To ',
                  style: TextStyle(),
                ),
                TextSpan(
                  text: 'Chemvalley',
                  style: Theme.of(context).extension(),
                ),
                const TextSpan(
                  text: 'Chemvalley Is a Mystery And We Have a Clue',
                  style: TextStyle(),
                ),
              ],
            ),
          ),
          OutlinedButton(
            onPressed: () => {},
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            child: const Icon(Icons.notifications),
          ),
        ],
      ),
    );
  }
}
