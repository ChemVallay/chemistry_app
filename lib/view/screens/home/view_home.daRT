import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class ViewHome extends StatelessWidget {
  const ViewHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ViewHome'),
      ),
      body: const Center(
        child: Text('Scaffold Body'),
      ),
    );
  }
  Widget _CustomAppBar(BuildContext context){
    return Row(
      children: [
       
        Text.rich(
          
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
        )
       OutlinedButton(
         onPressed: () => {},
         style: OutlinedButton.styleFrom(
           padding: EdgeInsets.zero,
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(2),
           ),
         ),
         child: Icon(Icons.notifications),
       ),
      ],
    ),
  }
}