import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'drawer_item.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Column(
            children: const [
              CircleAvatar(
                backgroundImage: AssetImage("images/image.jpeg"),
                radius: 50,
              ),
              SizedBox(height: 10),
              Text("Asmaa ELASRI"),
            ],
          )),
          DrawerItem("Home","/",Icon(Icons.home)),
          DrawerItem("Livres","/livres",Icon(Icons.newspaper)),
          DrawerItem("Adherents","/adherents",Icon(Icons.newspaper)),
          DrawerItem("About","/about",Icon(Icons.error)),
        ],
      ),
    );
  }
}
