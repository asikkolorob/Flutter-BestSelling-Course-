import 'package:flutter/material.dart';

import '../widgets/buttons.dart';

class AnswerWidget extends StatelessWidget {
  const AnswerWidget(
      {Key? key, required this.selectHandler, required this.answerText})
      : super(key: key);

  final Function selectHandler;
  final String answerText;

  @override
  Widget build(BuildContext context) {
    return ButtonsWidget(
      color: const Color.fromARGB(255, 116, 205, 243),
      onTab: () {
        selectHandler();
      },
      text: answerText,
    );
  }
}
