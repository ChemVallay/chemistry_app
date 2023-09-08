import 'package:flutter/material.dart';

class ViewHome extends StatefulWidget {
  const ViewHome({super.key});

  @override
  State<ViewHome> createState() => _ViewHomeState();
}

class _ViewHomeState extends State<ViewHome> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(85), child: CustomAppBar()),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text.rich(
          TextSpan(
            style: TextStyle(),
            children: [
              TextSpan(
                text: ' Mahmoud Hafez ',
              ),
              TextSpan(
                text: 'To ',
                style: TextStyle(),
              ),
              TextSpan(
                text: 'Chemvalley',
                style: TextStyle(),
              ),
              TextSpan(
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
    );
  }
}
