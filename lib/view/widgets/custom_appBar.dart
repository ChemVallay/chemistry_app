import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        color: Colors.grey.shade50,
        //        borderRadius: BorderRadius.circular(),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 18.0 + 10,
                top: 28,
              //                right: MediaQuery.of(context).size.width * .5 - (36 / 479),
              //                bottom: 20,
              //              width: MediaQuery.of(context).size.width *.5 ,
              //                  height: 36,
                                 ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome Mahmoud Hafez ',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    ' To'
                    ' Chemvalley',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    '\n Chemvalley Is a Mystery And We Have a Clue',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 75.0, left: 20),
              child: GestureDetector(
                onTap: () => {},
                // style: OutlinedButton.styleFrom(
                //   padding: EdgeInsets.zero,
                //   shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(2),
                //   ),
                // ),
                child: const Icon(Icons.circle_notifications_sharp, size: 29),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
