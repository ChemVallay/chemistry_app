import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'nav_bar_state.dart';
final int index = 0;
class NavBarCubit extends Cubit<int> {
  NavBarCubit() : super(0);
 
  void setIndex(int index, BuildContext context) {
    emit(index);
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/layout');
        break;
      case 1:
        Navigator.pushNamed(context, '/layout');
        break;
      case 2:
        Navigator.pushNamed(context, '/layout');
        break;
      case 3:
        Navigator.pushNamed(context, '/layout');
        break;
      default:
    }
  }
}
