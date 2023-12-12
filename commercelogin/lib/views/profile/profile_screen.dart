import 'package:commercelogin/controller/profile_controller/profile_controller.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController profileController = ProfileController();

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://cdn.sanity.io/images/8ti308z0/production/74d597ecb6af0466ddc5269d4636b93c68e302ec-5184x3456.jpg?rect=864,0,3456,3456&w=375&h=375&q=80&auto=format'),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            const Text("John Doe" , style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),),
           const SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: profileController.profileList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 10 , vertical: 3),
                    child: Card(
                    
                      child: ListTile(
                        leading: Icon(
                            profileController.profileList[index].leadingIcon),
                        title: Text(profileController.profileList[index].title),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
