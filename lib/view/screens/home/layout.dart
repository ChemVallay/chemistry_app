import 'package:chemvalley_app/view/screens/home/cubit/nav_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    //var _bottomNavIndex;

    return Scaffold(
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
                icon: Icon(Icons.home),
                selectedColor: Colors.purple,
              ),

              /// Likes
              DotNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                selectedColor: Colors.pink,
              ),

              /// Search
              DotNavigationBarItem(
                icon: Icon(Icons.search),
                selectedColor: Colors.orange,
              ),

              /// Profile
              DotNavigationBarItem(
                icon: Icon(Icons.person),
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