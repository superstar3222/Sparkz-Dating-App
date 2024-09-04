import 'package:dating_app/app/core/core.dart';

extension RouteNavigator on BuildContext {
  Future<T?> push<T extends Object?>(String child) async {
    return GoRouter.of(this).pushNamed(child);
  }

  void goToNamed(String name, {Object? extra}) {
    return GoRouter.of(this).goNamed(name, extra: extra);
  }
}
