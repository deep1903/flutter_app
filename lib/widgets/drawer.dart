import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXk8GFwTIaLBXPZgdAcBsGqI-NaJlq9xiNYQ&usqp=CAU";
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          children:[
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                        accountName: Text("harry"),
                        accountEmail: Text("harry@gmail.com"),
                        currentAccountPicture: CircleAvatar(
                          backgroundImage: NetworkImage(imageUrl),
                          )
                           // Image.network(imageUrl),
                       ),
                       ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,),
              title: Text("Home",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),),
                ),
             ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,),
              title: Text("Profile",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,),
              title: Text("Email me",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),),
            )
                   ],
             ),
            ),
          );
       }
}
