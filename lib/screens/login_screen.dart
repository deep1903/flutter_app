import 'package:flutter/material.dart';
import 'package:flutter_app/utils/routes.dart';

class LoginScreen extends StatefulWidget {

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String name="";
  bool changeButton = false;
  bool validateUsername =false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login_image.png",
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20.0,
            ),
             Text(
              "Welcome $name",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:16.0,horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    //validator: usernameValidator,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.email_outlined),
                      hintText: "Enter username",
                      labelText: "Username",
                      ),

                    onChanged: (value){
                      name=value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.lock_outlined),
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                 InkWell(
                   onTap:() async{
                     setState(() {
                       changeButton = true;
                     });
                     await Future.delayed(const Duration(seconds: 1));
                     await Navigator.pushNamed(context, MyRoutes.homeRoute);
                     setState(() {
                       changeButton = false;
                     });
                   },
                   child: AnimatedContainer(
                     duration: const Duration(seconds: 1),
                     width: changeButton? 50 : 150,
                     height: 50,

                     alignment: Alignment.center,
                     child: changeButton
                         ?const Icon(
                         Icons.done,
                         color: Colors.white,)
                     : const Text(
                         "Login",
                       style: TextStyle(
                         color: Colors.white,
                         fontWeight: FontWeight.bold,
                         fontSize: 18),
                     ),
                     decoration: BoxDecoration(
                       color: Colors.deepPurple,
                       // shape : changeButton
                       //     ?BoxShape.circle
                       //     :BoxShape.rectangle,
                       borderRadius: BorderRadius.circular(changeButton? 50 : 9)
                      ),
                     ),
                 ),

                ],
              ),
            )
          ],
        ),
      )
    );
  }




}