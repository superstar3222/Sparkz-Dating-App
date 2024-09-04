part of '../notification_barrel.dart';

class NotificationScreen extends StatefulWidget {
  static const String route = '/notification_view';
  static const String name = 'notifications';
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => NotificationController();
}

class NotificationController extends State<NotificationScreen> {
  getCurrentIndex(int newIndex) {}

  @override
  Widget build(BuildContext context) {
    return _NotificationView(this);
  }
}
