import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LayoutDemo extends StatefulWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  State<LayoutDemo> createState() => _LayoutDemoState();
}

class _LayoutDemoState extends State<LayoutDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.network(
                height:100,
                  width: 100,
                  "https://img.freepik.com/premium-vector/instagram-social-media-icon-gradient-social-media-logo_197792-4682.jpg"),
              Container(
                child: Column(
                  children: [
                    Text("Text 1"),
                    Text("Text 2"),
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Image.network(
                  height:100,
                  width: 100,
                  "https://img.freepik.com/premium-vector/instagram-social-media-icon-gradient-social-media-logo_197792-4682.jpg"),
              Image.network(
                  height:100,
                  width: 100,
                  "https://img.freepik.com/premium-vector/instagram-social-media-icon-gradient-social-media-logo_197792-4682.jpg"),
              Image.network(
                  height:100,
                  width: 100,
                  "https://img.freepik.com/premium-vector/instagram-social-media-icon-gradient-social-media-logo_197792-4682.jpg"),
            ],
          )
        ],
      ),
    );
  }
}
