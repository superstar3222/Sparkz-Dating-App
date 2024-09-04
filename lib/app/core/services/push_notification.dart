// import 'package:awesome_notifications/awesome_notifications.dart';
// import 'package:dating_app/app/core/logger/app_logger.dart';
// import 'package:dating_app/app/core/services/auth_local_data_source.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';

// class FirebasePushNotificationServce {
//   static final FirebasePushNotificationServce _firebasePushNotificationServce =
//       FirebasePushNotificationServce._internal();

//   factory FirebasePushNotificationServce() => _firebasePushNotificationServce;
//   FirebasePushNotificationServce._internal();
//   static FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;

//   static void getDeviceToken() {
//     // ** get notification token
//     firebaseMessaging.getToken().then((value) async {
//       debugPrint("getToken :$value");
//       await LocalDataStorage.instance.saveNotificationMessage(value!);
//     });
//   }

//   static Future<void> initializeNotification() async {
//     AwesomeNotifications().initialize(
//       null,
//       [
//         NotificationChannel(
//             channelKey: "Sparkz Dating App",
//             channelName: "Sparkz Dating App",
//             channelDescription: "Notification channel for Sparkz Dating App",
//             importance: NotificationImportance.High,
//             icon: 'resource://drawable/background.png'),
//       ],
//     );
//   }

//   static Future<void> onMessageListen() async {
//     FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
//       Log.info("..........................onMessage.....................");
//       Log.info(
//           "onMessage: ${message.notification?.title}/${message.notification?.body}");

//       await AwesomeNotifications().createNotification(
//         content: NotificationContent(
//           id: 0,
//           channelKey: "Sparks Dating App",
//           title: message.notification?.title,
//           body: message.notification?.body,
//           largeIcon: "asset://assets/images/no-wifi.png",
//         ),
//       );
//     });
//   }

//   static Future<void> requestPermission() async {
//     NotificationSettings settings = await firebaseMessaging.requestPermission(
//       alert: true,
//       announcement: false,
//       badge: true,
//       carPlay: false,
//       criticalAlert: false,
//       provisional: false,
//       sound: true,
//     );
//     if (settings.authorizationStatus == AuthorizationStatus.authorized) {
//       debugPrint("User have granted permission");
//     } else if (settings.authorizationStatus ==
//         AuthorizationStatus.provisional) {
//       debugPrint("User has granted provisional permission");
//     } else {
//       debugPrint("User has not acepted any permission");
//     }
//   }
// }
