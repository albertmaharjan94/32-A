import 'package:flutter/material.dart';

class MakeTextWidget extends StatefulWidget {
  MakeTextWidget({Key? key, required this.text}) : super(key: key);
  String text = "";
  @override
  State<MakeTextWidget> createState() => _MakeTextWidgetState();
}

class _MakeTextWidgetState extends State<MakeTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text("Rs. "+ widget.text);
  }
}
