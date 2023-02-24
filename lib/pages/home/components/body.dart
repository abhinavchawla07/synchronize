import 'package:flutter/material.dart';
import 'package:synchronize/constants.dart' as app_constants;
import 'package:synchronize/pages/home/components/input_word.dart';
import 'package:synchronize/pages/home/components/score_card.dart';

class Body extends StatelessWidget {
  final String word_1;
  final String word_2;
  final String score;
  final Function onSubmitPressed;
  final TextEditingController _inputWordController = TextEditingController();

  Body({
    Key? key,
    required this.word_1,
    required this.word_2,
    required this.score,
    required this.onSubmitPressed,
  }) : super(key: key);

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
