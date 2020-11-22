import 'package:flutter/material.dart';
import 'package:flutter_soru/Screens/Login/components/background.dart';
import 'package:flutter_soru/Screens/Signup/signup_screen.dart';
import 'package:flutter_soru/components/already_have_an_account_acheck.dart';
import 'package:flutter_soru/components/rounded_button.dart';
import 'package:flutter_soru/components/rounded_input_field.dart';
import 'package:flutter_soru/components/rounded_password_field.dart';
import 'package:flutter_soru/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  final Widget child;
  const Body({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Giriş",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset(
            "assets/icons/login.svg",
            height: size.height * 0.4,
          ),
          SizedBox(height: size.height * 0.03),
          RoundedInputField(
            hintText: "Email Adresiniz",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "Giriş Yap",
            press: () {},
            color: kPrimaryColor,
          ),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUpScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
