import 'package:flutter/material.dart';

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({
    Key? key,
    required this.color,
    required this.onTab,
    required this.text,
  }) : super(key: key);

  final Function onTab;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: ElevatedButton(
        onPressed: () {
          onTab();
        },
        child: Text(
          text,
          style: const TextStyle(fontSize: 23.0),
        ),
        style: ElevatedButton.styleFrom(
          primary: color,
          onPrimary: Colors.white,
          minimumSize: const Size(350, 55),
          animationDuration: const Duration(milliseconds: 200),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          elevation: 0,
        ),
      ),
    );
  }
}
