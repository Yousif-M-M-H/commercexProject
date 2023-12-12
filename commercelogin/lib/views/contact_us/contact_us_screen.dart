import 'package:commercelogin/views/contact_us/components/contact_info_widget.dart';
import 'package:commercelogin/views/contact_us/components/subject_section.dart';
import 'package:commercelogin/views/contact_us/components/title_widget.dart';
import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Contact Us",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ContactInfoWidget(
              icon: Icons.phone_android_outlined,
              title: 'Phones',
              subtitle: '+123 2349882331',
            ),
            const SizedBox(height: 15),
            const ContactInfoWidget(
              icon: Icons.email_outlined,
              title: 'Email',
              subtitle: 'hello@example.com',
            ),
            const SizedBox(height: 25),
            const TitleWidget(
              title: 'Subject',
            ),
            const SizedBox(height: 10),
            const SubjectSectionWidget(),
            const SizedBox(height: 14),
            const TitleWidget(
              title: 'Your Message',
            ),
            TextFormField(
              minLines: 6,
              keyboardType: TextInputType.multiline,
              maxLines: null,
            )
          ],
        ),
      ),
    );
  }
}
