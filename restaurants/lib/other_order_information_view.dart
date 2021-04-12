import 'package:flutter/material.dart';

class OtherOrderInformationView extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const OtherOrderInformationView({
    Key key,
    this.icon,
    this.color,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
          size: 18.0,
        ),
        Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
