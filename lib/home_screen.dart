import 'package:flutter/material.dart';

import 'notification_services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text('Local Notifications'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){
                  final notificationServices = NotificationServices();
                  notificationServices.showNotification(
                    id: 1,
                    title: 'Flutter Hero',
                    body: 'This is a new Notification',
                    payload: 'Max Notification'
                  );
                },
                style: ButtonStyle(
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                  fixedSize: const WidgetStatePropertyAll(Size.fromWidth(double.infinity))
                ),
                child: const Text('Simple Notification'),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
