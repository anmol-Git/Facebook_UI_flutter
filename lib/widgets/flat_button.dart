import 'package:flutter/material.dart';

class MyFlatButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const MyFlatButton({Key key, this.icon, this.color, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: Icon(
        icon,
        color: color,
      ),
      label: Text(text),
    );
  }
}
