import 'dart:math';

import 'package:synchronize/constants.dart';

class RandomWordsService {
  static String getNewWord(String? word_1, String? word_2, String? otherPlayerWord) {
    String newWord = "";
    int size = Constants.words.length;
    do {
      int random = Random().nextInt(size);
      newWord = Constants.words[random];
    }
    while(newWord == word_1 || newWord == word_2 || newWord == otherPlayerWord);
    return newWord;
  }
}