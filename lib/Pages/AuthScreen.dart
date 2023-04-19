import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:registration_rr/Pages/ApplicationForm.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(244, 244, 194, 194),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Center(
                  child: Text(
                    '   Riti Riwaz Welcomes You',
                    style: TextStyle(
                      fontFamily: GoogleFonts.bonheurRoyale().fontFamily,
                      fontSize: MediaQuery.of(context).size.width * 0.2,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 0, 0, 0)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(18.0),
                          bottomLeft: Radius.circular(18.0)),
                    )),
                    minimumSize: MaterialStateProperty.all<Size>(Size(150, 60)),
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.symmetric(vertical: 20),
                    ),
                  ),
                  child: Text('Login'),
                ),
                ElevatedButton(
                  onPressed: () {
                    showGeneralDialog(
                      context: context,
                      barrierDismissible: true,
                      barrierLabel: '',
                      pageBuilder: (BuildContext buildContext,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation) {
                        return Align(
                          alignment: Alignment.bottomCenter,
                          child: SlideTransition(
                            position: Tween<Offset>(
                              begin: const Offset(0, 1),
                              end: const Offset(0, 0),
                            ).animate(animation),
                            child: Container(
                              margin: EdgeInsets.only(
                                  top:
                                      MediaQuery.of(context).size.height * 0.2),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Text('Application Form'),
                                  // SizedBox(height: 20),
                                  Material(
                                    child: ApplicationForm(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      transitionDuration: Duration(milliseconds: 500),
                      // barrierColor: Colors.black.withOpacity(0.5),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 0, 0, 0)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(18.0),
                          bottomRight: Radius.circular(18.0)),
                    )),
                    minimumSize: MaterialStateProperty.all<Size>(Size(150, 60)),
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.symmetric(vertical: 20),
                    ),
                  ),
                  child: Text('Register'),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
