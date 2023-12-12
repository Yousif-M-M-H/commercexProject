import 'package:commercelogin/models/language_model/language_model.dart';

class LanguageController {
  List<LanguageModel> languages = [
    LanguageModel(
        image: "https://th.bing.com/th/id/OIP.duB-bW83VP98kuLTOb7a6gHaDt?w=303&h=175&c=7&r=0&o=5&dpr=1.5&pid=1.7",
        title: "English",
        ),
    LanguageModel(
        image:
            "https://th.bing.com/th/id/OIP.8BQ5FdBOtNXHchYf1dUkJwHaHa?w=183&h=183&c=7&r=0&o=5&dpr=1.5&pid=1.7",
        title: "French"),
    LanguageModel(
        image:
            "https://th.bing.com/th/id/OIP.S7QOv3pN_yx8iEN8pAXdfwHaE7?w=239&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7",
        title: "German"),
    LanguageModel(
        image: "https://cdn.countryflags.com/thumbs/china/flag-400.png",
        title: "Chinese"),
    LanguageModel(
        image: "https://cdn.countryflags.com/thumbs/japan/flag-800.png",
        title: "Japanese"),
    LanguageModel(
        image: "https://www.countryflags.com/wp-content/uploads/turkey-flag-png-large.png",
        title: "Turkish"),
  ];
}
