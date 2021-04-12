import 'package:flutter/material.dart';

extension StatelessWidgetExtensions on Widget {
  Widget withPadding({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) {
    return Container(
      padding: EdgeInsets.only(
        left: left,
        bottom: bottom,
        top: top,
        right: right,
      ),
      child: this,
    );
  }
}
