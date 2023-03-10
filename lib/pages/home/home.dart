import 'package:flutter/material.dart';
import 'package:synchronize/constants.dart' as app_constants;
import 'package:synchronize/pages/about/about_page.dart';
import 'package:synchronize/pages/home/components/body.dart';
import 'package:synchronize/services/random_words_service.dart';

class HomePage extends StatelessWidget {
  static String pageRoute = "/home";

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text(app_constants.Constants.title), actions: [
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, AboutPage.pageRoute);
          },
          icon: const Icon(Icons.info_outline),
        )
      ]),
      backgroundColor: app_constants.Colors.LIGHT_BLUE,
      body: Body(
        word_1: "abba",
        word_2: "abbaabbbaaacccbbbaaaabbaabbbaaa",
        score: '50',
        onSubmitPressed: (String word) {
          String newWord = RandomWordsService.getNewWord("alley", "cat", word);
          print("new word is $newWord");
        },
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
