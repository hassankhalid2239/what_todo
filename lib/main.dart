import 'package:flutter/material.dart';
import 'package:what_todo/home_screen.dart';
import 'notification_services.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  final NotificationServices notificationService = NotificationServices();
  await notificationService.initNotification();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notifications',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),

      home: const HomeScreen(),
    );
  }
}

