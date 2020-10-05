import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CostumFormField extends StatefulWidget {
  CostumFormField({
    Key key,
    this.controller,
    @required this.labelText,
    this.suffixIcon,
    this.prefixIcon,
    this.secureText,
  }) : super(key: key);

  final TextEditingController controller;
  final String labelText;
  final Widget suffixIcon;
  final Widget prefixIcon;
  bool secureText;

  @override
  _FormLoginTextState createState() => _FormLoginTextState();
}

class _FormLoginTextState extends State<CostumFormField> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: TextFormField(
          obscureText: widget.secureText,
          controller: widget.controller,
          decoration: InputDecoration(
            labelText: widget.labelText,
            prefixIcon: widget.prefixIcon,
            fillColor: Colors.white,
            suffixIcon: widget.suffixIcon,
          )),
    );
  }
}
