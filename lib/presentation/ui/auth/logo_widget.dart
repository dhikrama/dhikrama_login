import 'package:dhikrama/widget/responsive.dart';
import 'package:division/division.dart';
import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    Key key,
    @required this.textFormTitle,
    @required this.textFormSubTitle,
  }) : super(key: key);
  final String textFormTitle;
  final String textFormSubTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Txt(
              "Dhikrama ",
              style: TxtStyle()
                ..bold()
                ..textColor(Colors.black54)
                ..fontSize(Responsive.horizontal * 5),
            ),
            Txt("App",
                style: TxtStyle()
                  ..textColor(Color(0xff00DBFC))
                  ..fontSize(Responsive.horizontal * 5)),
          ],
        ),
        SizedBox(height: Responsive.vertical * 10),
        Txt(textFormTitle,
            style: TxtStyle()
              ..bold()
              ..fontSize(Responsive.horizontal * 5)
              ..textColor(Color(0xff00DBFC))),
        Txt(textFormSubTitle,
            style: TxtStyle()
              ..bold()
              ..fontSize(Responsive.horizontal * 3)
              ..textColor(Color(0xffBCBDBF))),
        SizedBox(height: 10),
      ],
    );
  }
}
