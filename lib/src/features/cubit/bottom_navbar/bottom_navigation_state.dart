part of 'bottom_navigation_cubit.dart';

class BottomNavigationState extends Equatable {
  final String bottomNavItems;
  final int index;
  const BottomNavigationState(
      {required this.bottomNavItems, required this.index});

  @override
  List<Object> get props => [bottomNavItems, index];
}
