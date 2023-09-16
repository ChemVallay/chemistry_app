// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomGlobuleAppBar extends StatelessWidget {
  String name;
  Widget? widget;
  CustomGlobuleAppBar({
    Key? key,
    required this.name,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      leading: GestureDetector(
        onTap: () => Navigator.of(context).pop(),
        child: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
      title: Text(name, style: Theme.of(context).textTheme.titleLarge),
      backgroundColor: Colors.white70,
      elevation: 15,
      expandedHeight: MediaQuery.of(context).size.height * .328649,
      floating: true,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
          background: Image.asset('assets/image/chemvallay-app.png')),
      titleSpacing: NavigationToolbar.kMiddleSpacing + 20,
      centerTitle: true,
      actionsIconTheme: const IconThemeData(color: Color(0xFFFDFEFE)),
      // bottomOpacity: 0.0,
      // background
      /*      clipBehavior: Clip.antiAliasWithSaveLayer,//Clip.hardEdge,*/
      /*       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) */
      /*        toolbarOpacity: 0.0,
      bottomOpacity: 0.0,
      */
      bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: SizedBox(
            child: widget,
          )),
    );
  }
}
