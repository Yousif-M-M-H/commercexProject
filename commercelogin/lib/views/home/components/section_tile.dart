import 'package:commercelogin/controller/home_controller/see_more_controller.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    SectionTitleController sectionTitleController =
        SectionTitleController(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
        GestureDetector(
          onTap: () {
            sectionTitleController.navigateToSeeMorePage();
          },
          child: const Text(
            'See More',
            style: TextStyle(
              color: Color.fromARGB(255, 175, 174, 174),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
