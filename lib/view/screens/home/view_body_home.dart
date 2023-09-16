import 'package:flutter/material.dart';

import '../../widgets/custom_appBar.dart';
import 'view_home_widget.dart';

class ViewHome extends StatelessWidget {
  const ViewHome({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(85+90), child: CustomAppBar()),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.only(left: 8.0, right: 8.0,top:35.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               ColumnRight(),
              ColumnLeft(),
             
              
            ],
          ),
        ]),
      )),
    );
  }
}
