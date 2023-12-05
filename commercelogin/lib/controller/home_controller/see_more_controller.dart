import 'package:commercelogin/views/category/category_screen.dart';
import 'package:flutter/material.dart';

class SectionTitleController {
  final BuildContext context;

  SectionTitleController(this.context);

  void navigateToSeeMorePage() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const MyCategoryScreen()), 
    );
  }
}
