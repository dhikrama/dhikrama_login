import 'package:division/division.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    Key key,
    @required this.color,
    @required this.text,
    @required this.function,
  }) : super(key: key);
  final Color color;
  final String text;
  final void Function() function;
  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  BorderRadius _radius = BorderRadius.circular(20);
  @override
  Widget build(BuildContext context) {
    return Parent(
      style: ParentStyle()
        ..elevation(3.0)
        ..background.color(widget.color)
        ..borderRadius(all: 20)
        ..width(200)
        ..height(40),
      child: Material(
        color: Colors.transparent,
        borderRadius: _radius,
        child: InkWell(
          borderRadius: _radius,
          onTap: widget.function,
          child: Center(
            child: Txt(widget.text,
                style: TxtStyle()
                  ..fontSize(20)
                  ..textColor(Colors.white)),
          ),
        ),
      ),
    );
  }
}
