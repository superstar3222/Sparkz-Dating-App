part of 'skeleton_controller.dart';

class _SkeletonView extends StatelessView<SkeletonScreen, SkeletonController> {
  const _SkeletonView(SkeletonController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: _buildBottomNavigation(context, tabs),
    );
  }
}

BlocBuilder<BottomNavigationCubit, BottomNavigationState>
    _buildBottomNavigation(
            context, List<_NamedNavigationBarItemsWidget> tabs) =>
        BlocBuilder<BottomNavigationCubit, BottomNavigationState>(
            buildWhen: (previous, current) => previous.index != current.index,
            builder: (context, state) {
              return BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: state.index,
                selectedItemColor: AppColors.darkRed,
                unselectedItemColor: AppColors.colorGrey.withOpacity(0.6),
                elevation: 3,
                onTap: (index) {
                  if (state.index != index) {
                    context.read<BottomNavigationCubit>().gotoNavBarItem(index);
                    context.go(tabs[index].initialLocation);
                  }
                },
                items: tabs,
              );
            });

final tabs = [
  _NamedNavigationBarItemsWidget(
      initialLocation: HomeScreen.path,
      icon: SvgPicture.asset(Assets.svgHelper('Favorite')),
      label: 'Home'),
  _NamedNavigationBarItemsWidget(
      initialLocation: ChatTabBarSkeleton.path,
      icon: SvgPicture.asset(Assets.svgHelper('message')),
      label: 'Chats'),
  _NamedNavigationBarItemsWidget(
      initialLocation: NotificationScreen.route,
      icon: const Icon(Icons.notifications),
      label: 'Notification'),
  _NamedNavigationBarItemsWidget(
      initialLocation: ProfileScreen.route,
      icon: SvgPicture.asset(Assets.svgHelper('User')),
      label: 'Profile'),
];

class _NamedNavigationBarItemsWidget extends BottomNavigationBarItem {
  final String initialLocation;

  _NamedNavigationBarItemsWidget(
      {required this.initialLocation, required Widget icon, String? label})
      : super(icon: icon, label: label);
}
