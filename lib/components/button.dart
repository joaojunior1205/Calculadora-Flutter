import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final bool big;

  Button({
    this.big = false,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: RaisedButton(
        child: Text(text),
        onPressed: () {},
      ),
    );
  }
}
