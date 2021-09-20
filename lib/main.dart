import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home_page.dart';
import 'package:flutter_app/screens/login_page.dart';
import 'package:flutter_app/utils/routes.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
           routes: {
             "/": (context) => LoginPage(),
             MyRoutes.loginRoute :(context) =>LoginPage(),
             MyRoutes.homeRoute :(Context)=> HomePage(),
           },
    );
  }
}


