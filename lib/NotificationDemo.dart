import 'package:flutter/material.dart';

class NotificationDemo extends StatefulWidget {
  const NotificationDemo({Key? key}) : super(key: key);

  @override
  State<NotificationDemo> createState() => _NotificationDemoState();
}

class _NotificationDemoState extends State<NotificationDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("NotificationDemo"),),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){

          }, child: Text("Notification Text Only")),
          ElevatedButton(onPressed: (){

          }, child: Text("Notification With Image")),
        ],
      ),
    );
  }
}
