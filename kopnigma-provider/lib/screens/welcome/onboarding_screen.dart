import 'package:flutter/material.dart';
import 'package:koperasi/kopnigma_app.dart';
import 'package:koperasi/screens/authentication/signin_screen.dart';

import '../../preference/pref_manager.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

// @override
// void initState() {
//   super.initState();
//   Future.delayed(Duration(seconds: 3), () {
//     Navigator.of(context).popAndPushNamed('/signin');
//   });
// }


class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    PrefManager.getIsLogin.then((value) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) {
          if (value == 1) return KopNigmaApp();
          else return SignInScreen();
        })
      );
    });

    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.popAndPushNamed(context, '/signin');
        },
        child: Stack(children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg-app.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      width: 128,
                      height: 128,
                      margin: const EdgeInsets.fromLTRB(36, 0, 0, 0),
                      child: Image.asset(
                          'assets/images/koperasi_indonesia-logo.png')),
                ],
              )),
              const Text(
                'WELCOME TO KOPNIGMA APP',
                style: TextStyle(fontSize: 40, color: Colors.blue),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 35,
              ),
              const Image(image: AssetImage('assets/images/welcome-icon.png')),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
