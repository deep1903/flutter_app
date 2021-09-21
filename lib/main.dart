import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home_screen.dart';
import 'package:flutter_app/screens/login_screen.dart';
import 'package:flutter_app/screens/splash_screen.dart';
import 'package:flutter_app/utils/routes.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
           debugShowCheckedModeBanner: false,
           initialRoute: MyRoutes.splashRoute,
           routes: {
             MyRoutes.loginRoute :(context) =>LoginScreen(),
             MyRoutes.splashRoute :(context) =>SplashScreen(),
             MyRoutes.homeRoute :(context)=> HomeScreen(),
           },
    );
  }
}
