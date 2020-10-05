import 'package:dhikrama/widget/custom_buton.dart';
import 'package:flutter/material.dart';

class ButtonSocMed extends StatelessWidget {
  const ButtonSocMed({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomButton(
        function: () {},
        color: Color(0xff00DBFC),
        text: "Google",
      ),
    );
  }
}
