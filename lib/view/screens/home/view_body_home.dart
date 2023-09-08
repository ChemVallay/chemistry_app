import 'package:flutter/material.dart';

import '../../widgets/custom_appBar.dart';
import 'view_home_widget.dart';

class ViewHome extends StatelessWidget {
  const ViewHome({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(85), child: CustomAppBar()),
      body: SingleChildScrollView(
          child: Column(children: [
        Row(
          children: [
            ColumnLeft(),
            Column(
              children: [],
            )
          ],
        ),
      ])),
    );
  }
}
