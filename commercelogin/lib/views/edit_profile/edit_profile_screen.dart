import 'package:commercelogin/views/edit_profile/components/profile_picture_widget.dart';
import 'package:commercelogin/views/edit_profile/components/user_info_field.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Edit Profile",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ProfilePictureWidget(),
          SizedBox(
            height: 210,
            child: ListView.separated(
              itemCount: 4,
              separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
              itemBuilder: (context, index) {
                return const UserInfoField(title: "Name");
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: MaterialButton(
              minWidth: double.infinity,
              onPressed: () {},
              color: Colors.deepPurple,
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 1),
                child: Text(
                  "Save",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
