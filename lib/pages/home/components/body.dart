import 'dart:math';

import 'package:flutter/material.dart';
import 'package:synchronize/constants.dart' as app_constants;
import 'package:synchronize/pages/home/components/input_word.dart';
import 'package:synchronize/pages/home/components/score_card.dart';

import '../../../models/game.dart';

class Body extends StatelessWidget {
  final Game game;
  late String word_1;
  late String word_2;
  late String score;
  final Function onSubmitPressed;
  final TextEditingController _inputWordController = TextEditingController();

  Body({
    super.key,
    required this.game,
    required this.onSubmitPressed,
  }) {
    score = "${game.score}";
    int minSize = min(game.wordlist_1.length, game.wordlist_2.length);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                const Text(
                  "Think of a word which relates to both these words",
                  style: TextStyle(
                    fontSize: 33,
                    color: app_constants.Colors.DEEP_BLUE,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 50),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    word_1,
                    style: const TextStyle(
                      fontSize: 28,
                      color: app_constants.Colors.DEEP_BLUE,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    word_2,
                    style: const TextStyle(
                      fontSize: 28,
                      color: app_constants.Colors.DEEP_BLUE,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                InputWord(
                  inputController: _inputWordController,
                  onSubmitPressed: onSubmitPressed,
                ),
                ScoreCard(
                  score: score,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
