import 'package:commercelogin/controller/language_controller/language_controller.dart';
import 'package:commercelogin/views/language/component/country_container.dart';
import 'package:flutter/material.dart';

class LangaugesScreen extends StatelessWidget {
  const LangaugesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LanguageController languageController = LanguageController();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Language",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Center(
            child: Text(
              "Select a Language",
              style: TextStyle(color:  Color.fromARGB(255, 138, 137, 137)),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.separated(
              itemCount: languageController.languages.length,
              separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
              itemBuilder: (context, index) {
                return CountryContainerWidget(
                  title: languageController.languages[index].title!,
                  image: languageController.languages[index].image!,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
