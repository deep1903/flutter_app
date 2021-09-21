import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/drawer.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App',style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
        body: Center(
         child: Container(
           child: const Text("Flutter",),
          ),
        ),
      drawer: MyDrawer(),
      );
   }
}
