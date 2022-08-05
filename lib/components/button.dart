import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool big;
  final Color color;

  Button({
    this.big = false,
    this.color = DEFAULT,
    required this.text,
  });

  Button.big({
    this.big = true,
    this.color = DEFAULT,
    required this.text,
  });

  Button.operation({
    this.big = false,
    this.color = OPERATION,
    required this.text,
  });

  Button.dark({
    this.big = false,
    this.color = DARK,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: RaisedButton(
          color: this.color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 45,
              fontWeight: FontWeight.w300,
            ),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
