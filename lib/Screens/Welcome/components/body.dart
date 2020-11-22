import 'package:flutter/material.dart';
import 'package:flutter_soru/Screens/Login/login_screen.dart';
import 'package:flutter_soru/Screens/Welcome/components/background.dart';
import 'package:flutter_soru/components/rounded_button.dart';
import 'package:flutter_soru/constants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //bu size ile ekranımızın w/h degerlerını provide ediyoruz
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //merkeze yazdırıyor
          children: <Widget>[
            Text(
              "Hoşgeldin SADE",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            //svg'nın ustundekı yazı için box olusturup deger verme
            SizedBox(
              height: size.height * 0.05,
            ),
            //svg kullanımı
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.4,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            //button kullanımı
            RoundedButton(
              text: "Giriş Yap",
              color: kPrimaryColor,
              //onPresse donmeli yanı LoginScreene yonlendırıyor
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "Kaydol",
              color: kPrimaryLightColor, // butonun rengını verıyorum
              textColor: Colors.black,
              press: () {},
            )
          ],
        ),
      ),
    );
  }
}
