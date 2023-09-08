part of 'nav_bar_cubit.dart';

@immutable
 class NavBarState {
  final int index ;

  NavBarState(this.index);
}

final class NavBarInitial extends NavBarState {
  NavBarInitial(super.index);
}
