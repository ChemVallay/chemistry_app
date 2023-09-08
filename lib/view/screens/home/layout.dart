import 'package:chemvalley_app/view/screens/home/cubit/nav_bar_cubit.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'view_body_home.dart';

class LayoutHome extends StatefulWidget {
  const LayoutHome({super.key});

  @override
  State<LayoutHome> createState() => _LayoutHomeState();
}

class _LayoutHomeState extends State<LayoutHome> {
  int index = 0;
  selectTap() {}
  final NavBarCubit cubit = NavBarCubit();
  @override
  Widget build(BuildContext context) {
    List<IconData> iconList = [];

    return Scaffold(
      body: BlocBuilder<NavBarCubit, int>(builder: (context, state) {
        if (state == 0) {
          return const ViewHome();
        } else if (state == 1) {
          return const ViewHome();
        } else if (state == 2) {
          return const ViewHome();
        } else if (state == 3) {
          return const ViewHome();
        } else {
          return Container();
        }
      }),
      extendBody: true,
      bottomNavigationBar: BlocBuilder<NavBarCubit, int>(
        builder: (context, state) {
          return DotNavigationBar(
            currentIndex: cubit.state,
            onTap: (i) {
              cubit.setIndex(i, context);
            },
            // dotIndicatorColor: Colors.black,
            items: [
              /// Home
              DotNavigationBarItem(
                icon: const Icon(Icons.home),
                selectedColor: Colors.purple,
              ),

              /// Likes
              DotNavigationBarItem(
                icon: const Icon(Icons.favorite_border),
                selectedColor: Colors.pink,
              ),

              /// Search
              DotNavigationBarItem(
                icon: const Icon(Icons.search),
                selectedColor: Colors.orange,
              ),

              /// Profile
              DotNavigationBarItem(
                icon: const Icon(Icons.person),
                selectedColor: Colors.teal,
              ),
            ],
          );
        },
      ),
    );
  }
}
// make button nav bar in flutter with cubit ?