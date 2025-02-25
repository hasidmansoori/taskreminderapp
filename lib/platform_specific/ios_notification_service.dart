import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class IOSNotificationService {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  Future<void> initialize() async {
    // Initialize the plugin for iOS (no need for IOSInitializationSettings now)
    final InitializationSettings initializationSettings = InitializationSettings(
      android: AndroidInitializationSettings('app_icon'), // Specify Android icon here
      iOS: DarwinInitializationSettings(),
    );

    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  Future<void> showNotification(String title, String body) async {
    // Define Darwin-specific notification details
    const DarwinNotificationDetails darwinDetails = DarwinNotificationDetails(
      presentAlert: true, // Show alert
      presentBadge: true, // Show badge
      presentSound: true, // Play sound
    );

    // Define platform-specific notification details
    const NotificationDetails platformDetails = NotificationDetails(
      iOS: darwinDetails, // Configure iOS-specific details here
      android: AndroidNotificationDetails(
        'your_channel_id', // Android channel ID
        'your_channel_name', // Android channel name
        channelDescription: 'Description of your notification channel',
        importance: Importance.high,
        priority: Priority.high,
        playSound: true,
        icon: 'app_icon', // Specify the icon here
      ),
    );

    // Show the notification
    await flutterLocalNotificationsPlugin.show(0, title, body, platformDetails);
  }
}
