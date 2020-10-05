import 'package:dhikrama/widget/responsive.dart';
import 'package:division/division.dart';
import 'package:flutter/material.dart';

class TextToPage extends StatelessWidget {
  TextToPage({
    Key key,
    @required this.function,
    @required this.textDescription,
    @required this.textToPage,
  }) : super(key: key);
  Function function;
  final String textDescription;
  final String textToPage;

  @override
  Widget build(BuildContext context) {
    Responsive().init(context);
    return Container(
      height: Responsive.vertical * 18,
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Txt(
            textDescription,
            style: TxtStyle()..textColor(Colors.white),
          ),
          Material(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
            child: InkWell(
              onTap: function,
              borderRadius: BorderRadius.circular(10),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Txt(
                  textToPage,
                  style: TxtStyle()
                    ..textColor(
                      Color(0xff00DBFC),
                    ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
