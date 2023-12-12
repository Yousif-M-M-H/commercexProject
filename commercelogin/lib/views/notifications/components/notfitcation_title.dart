import 'package:flutter/material.dart';

class NotificationsTitleWidget extends StatelessWidget {
  const NotificationsTitleWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 19, color: Colors.black),
        ),
      ),
    );
  }
}
