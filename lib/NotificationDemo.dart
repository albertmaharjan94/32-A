import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/services/NotificationService.dart';

class NotificationDemo extends StatefulWidget {
  const NotificationDemo({Key? key}) : super(key: key);

  @override
  State<NotificationDemo> createState() => _NotificationDemoState();
}

class _NotificationDemoState extends State<NotificationDemo> {
  Future<void> setupFcm() async {
    FirebaseMessaging.instance.getInitialMessage().then((message) {
      print(message);
    });

    FirebaseMessaging.instance.getToken().then((value) {
      print("fcm :: " + value.toString());
    });

    FirebaseMessaging.onMessage.listen((message) {
      if (message.notification != null) {
        print(message.notification!.body);
        print(message.notification!.title);
        NotificationService.displayFcm(notification: message.notification!);
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupFcm();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NotificationDemo"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                NotificationService.displayText(
                    title: "Hello Title", body: "Body here");
              },
              child: Text("Notification Text Only")),
          ElevatedButton(
              onPressed: () {
                NotificationService.displayImage(
                    title: "title",
                    body: "body",
                    icon: "assets/images/logo.png",
                    image: "assets/images/logo.png");
              },
              child: Text("Notification With Image")),
        ],
      ),
    );
  }
}
