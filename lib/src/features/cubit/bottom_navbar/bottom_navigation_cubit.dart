import 'package:equatable/equatable.dart';

import '../../../../../app/core/core.dart';

part 'bottom_navigation_state.dart';

class BottomNavigationCubit extends Cubit<BottomNavigationState> {
  BottomNavigationCubit()
      : super(const BottomNavigationState(bottomNavItems: HomeScreen.path, index: 0));

  void gotoNavBarItem(int index) {
    switch (index) {
      case 0:
        emit(const BottomNavigationState(
            bottomNavItems: HomeScreen.path, index: 0));
        break;
      case 1:
        emit(const BottomNavigationState(
            bottomNavItems: ChatsScreen.route, index: 1));
        break;
      case 2:
        emit(const BottomNavigationState(
            bottomNavItems: NotificationScreen.route, index: 2));
        break;
      case 3:
        emit(const BottomNavigationState(
            bottomNavItems: ProfileScreen.route, index: 3));
        break;
      default:
    }
  }
}
