import 'package:flutter/material.dart';

//Widgets
import 'package:food_app/widgets/loginBotton.dart';
import 'package:food_app/widgets/loginText.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      /* ----------------------Login Page START------------------------*/
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //START - Added background image on login page
          Container(
            height: 415,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/loginimage.png"),
              ),
            ),
          ),
          //END - Added background image on login page

          const SizedBox(height: 5),

          // START - Text Widget
          const login_text_widget(
            logintextt:
                "Lorem ipsum \ndolor sit amet, \nconsectetur \nadipiscing elit.  ",
            logintextcolor: Color(0xffF5F5F5),
            textfontsize: 40,
          ),
          // END - Text Widget

          const Spacer(),

          // START Button Widget
          const LoginButtonWidget(
            colorss: Color(0xff314B61),
            textt: "Login",
            textColor: Color(0xffF5F5F5),
          ),
          // END Button Widget

          const Spacer(),

          //START - Text Widget
          Align(
            alignment: Alignment.center,
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                login_text_widget(
                  logintextt: "Don’t have an account? ",
                  logintextcolor: Color(0xff375268),
                  textfontsize: 18,
                ),
                login_text_widget(
                  logintextt: "Create account",
                  logintextcolor: Color(0xffD9D9D9),
                  textfontsize: 18,
                ),
              ],
            ),
          ),
          // END - Text Widget

          const Spacer(),
        ],
      ),
      /* ----------------------Login Page END--------------------------*/
    );
  }
}
