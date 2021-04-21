import 'package:flutter/material.dart';
import 'package:restaurants/utils.dart';

class CustomStepper extends StatefulWidget {
  CustomStepper({
    @required this.lowerLimit,
    @required this.upperLimit,
    @required this.stepValue,
    @required this.iconSize,
    @required this.value,
    @required this.callbackValue,
  });

  final int lowerLimit;
  final int upperLimit;
  final int stepValue;
  final double iconSize;
  final Function callbackValue;
  int value;

  @override
  _CustomStepperState createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundedIconButton(
          icon: Icons.remove,
          iconSize: widget.iconSize,
          color: kColorText,
          onPress: () {
            setState(() {
              widget.value = widget.value == widget.lowerLimit ? widget.lowerLimit : widget.value -= widget.stepValue;
              widget.callbackValue(widget.value);
            });
          },
        ),
        Container(
          width: widget.iconSize,
          child: Text(
            '${widget.value}',
            style: TextStyle(
              fontSize: widget.iconSize * 0.6,
              color: kColorText,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        RoundedIconButton(
          icon: Icons.add,
          color: kColorText,
          iconSize: widget.iconSize,
          onPress: () {
            setState(() {
              widget.value = widget.value == widget.upperLimit ? widget.upperLimit : widget.value += widget.stepValue;
              widget.callbackValue(widget.value);
            });
          },
        ),
      ],
    );
  }
}

class RoundedIconButton extends StatelessWidget {
  RoundedIconButton({
    @required this.icon,
    @required this.onPress,
    @required this.iconSize,
    @required this.color,
  });

  final IconData icon;
  final Function onPress;
  final double iconSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(width: iconSize, height: iconSize),
      onPressed: onPress,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      fillColor: color,
      child: Icon(
        icon,
        color: Colors.white,
        size: iconSize * 0.8,
      ),
    );
  }
}

class RoundedTextIconButton extends StatelessWidget {
  RoundedTextIconButton({
    @required this.text,
    @required this.icon,
    @required this.onPress,
    @required this.iconSize,
  });

  final String text;
  final IconData icon;
  final Function onPress;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(
        width: iconSize * 2,
        height: iconSize,
      ),
      onPressed: onPress,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      fillColor: Color.fromARGB(255, 185, 185, 230),
      child: Row(
        children: [
          Expanded(
            child: Icon(
              icon,
              color: kColorText,
              size: iconSize * 0.8,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                color: kColorText,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
