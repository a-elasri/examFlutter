import 'package:examen/ui/pages/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(About());
class About extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("About"),
        ),
        body:Center(
          child: Column(
            children: [
              SizedBox(height: 30),
          CircleAvatar(
          backgroundImage: AssetImage("images/image.jpeg"),
      radius: 50,
    ),
    SizedBox(height: 10),
    Text("Asmaa ELASRI"),


            ],
          ),
        ),

    );
}
}
