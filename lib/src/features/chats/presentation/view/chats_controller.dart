part of '../chats_barrel.dart';

class ChatsScreen extends StatefulWidget {
  static const String route = '/chats_view';
  static const String name = 'chats';
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => ChatsController();
}

class ChatsController extends State<ChatsScreen> {
  getCurrentIndex(int newIndex) {}

  @override
  Widget build(BuildContext context) {
    return _ChatsView(this);
  }
}
