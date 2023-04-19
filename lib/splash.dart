import 'package:flutter/material.dart';
import 'package:registration_rr/Pages/AuthScreen.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    GoogleFonts.bonheurRoyale().fontFamily;
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => AuthScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          //     Image.asset(
          //       'assets/images/splash.png',
          //       height: 150,
          //     ),
          // ],
          children: [
            Text(
              'Riti \n Riwaz',
              style: TextStyle(
                fontFamily: GoogleFonts.bonheurRoyale().fontFamily,
                fontSize: MediaQuery.of(context).size.width * 0.1,
                color: Color.fromARGB(255, 214, 201, 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
