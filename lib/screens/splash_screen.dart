import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home_screen.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 10 ),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(_) => LoginScreen() ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisAlignment : MainAxisAlignment.center,
          children: [
                ClipOval(
                    child: Image.asset('assets/images/images.png',height: 110,width: 110,)
                ),

                const SizedBox(height: 100,),
                const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                )
          ],
        ),
      ),

    );
  }
}
