part of '../profile_barrel.dart';

class ProfileScreen extends StatefulWidget {
  static const String route = '/profile_view';
  static const String name = 'profile_view';
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => ProfileController();
}

class ProfileController extends State<ProfileScreen> {
  getCurrentIndex(int newIndex) {}

  @override
  Widget build(BuildContext context) {
    return _ProfileView(this);
  }
}
