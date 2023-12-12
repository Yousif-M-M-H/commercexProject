import 'package:commercelogin/views/settings/components/language_container.dart';
import 'package:commercelogin/views/settings/components/settings_container.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Settings",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: const Column(
        children: [
          SettingsContainer(
            title: "Push Notifications",
            subtitle: "Off / On",
          ),
          SizedBox(height: 12),
          SettingsContainer(
            title: "Theme",
            subtitle: "Light / Dark",
          ),
          SizedBox(height: 12),
          LanguageContainer(
            title: 'Language',
            subtitle: 'English',
          )
        ],
      ),
    );
  }
}
