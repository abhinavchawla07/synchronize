import 'package:flutter/material.dart';
import 'package:synchronize/constants.dart' as app_constants;

class ScoreCard extends StatefulWidget {
  final String score;

  const ScoreCard({Key? key, required this.score}) : super(key: key);

  @override
  State<ScoreCard> createState() => _ScoreCardState();
}

class _ScoreCardState extends State<ScoreCard> {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: SizedBox(
        height: 250,
        child: Center(
          child: Text(
            "Your score: ${widget.score}",
            style: const TextStyle(
              fontSize: 28,
              color: app_constants.Colors.DEEP_BLUE,
            ),
          ),
        ),
      ),
    );
  }
}
