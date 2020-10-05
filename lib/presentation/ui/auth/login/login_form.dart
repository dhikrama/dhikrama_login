import 'package:dhikrama/presentation/ui/auth/login/button_socmed.dart';
import 'package:dhikrama/widget/custom_buton.dart';
import 'package:dhikrama/widget/custom_form_field.dart';
import 'package:dhikrama/widget/responsive.dart';
import 'package:division/division.dart';
import 'package:flutter/material.dart';
import '../logo_widget.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _controllerText = true;
  Icon _iconTrue = Icon(Icons.remove_red_eye);
  Icon _iconFalse = Icon(Icons.do_not_disturb_off);
  @override
  Widget build(BuildContext context) {
    Responsive().init(context);
    return Center(
      child: Parent(
        style: ParentStyle()
          ..height(Responsive.vertical * 156)
          ..borderRadius(bottomLeft: 40, bottomRight: 40)
          ..background.color(Colors.white),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  //// Logo and title Register
                  Column(
                    children: [
                      Center(
                        child: LogoWidget(
                          textFormTitle: 'Login',
                          textFormSubTitle: 'To continue your account',
                        ),
                      ),

                      //// Form field custom for email
                      CostumFormField(
                        secureText: false,
                        labelText: "Email *",
                        prefixIcon: Icon(Icons.email),
                      ),

                      SizedBox(height: 20),

                      //// Form field custom For password
                      CostumFormField(
                        secureText: _controllerText,
                        labelText: "Password *",
                        prefixIcon: Icon(Icons.vpn_key),
                        suffixIcon: Material(
                            child: InkWell(
                          onTap: () {
                            if (_controllerText == true)
                              _controllerText = false;
                            else
                              _controllerText = true;
                            setState(() {});
                          },
                          child: (!_controllerText) ? _iconFalse : _iconTrue,
                        )),
                      ),

                      SizedBox(height: 20),

                      //// Button for login user with email
                      CustomButton(
                        function: () {},
                        color: Color(0xff0062A4),
                        text: "Login",
                      ),

                      Txt("OR",
                          style: TxtStyle()
                            ..margin(top: 10, bottom: 10)
                            ..fontSize(20)
                            ..textColor(Colors.black45)),

                      /// Button for Social Media
                      ButtonSocMed(),
                    ],
                  ),
                ],
              ),

              // Logo fotter
              SizedBox(height: Responsive.vertical * 2.2),

              Center(
                child: Txt("Dhikrama App",
                    style: TxtStyle()
                      ..fontSize(20)
                      ..bold()
                      ..textColor(Colors.black45)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
