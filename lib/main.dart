import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Profile App",
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
    debugShowCheckedModeBanner: false,
    home: ProfileApp(),
  ));
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile App"),
      ),
      body: Column(
        children: [
          Center(
            child: Image.asset(
              "assets/model.png",
              height: 200,
              width: 180,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(colors: [Colors.red, Colors.yellow]),
              ),
              width: 500,
              height: 100,
              child: Text(
                "\n  CR Poudyal\n\n  App Developer",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.arrow_forward,
              color: Colors.green,
            ),
            title: Text("Java"),
            subtitle: Text("Beginner"),
            trailing: Icon(
              Icons.delete,
              color: Colors.red,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.arrow_forward,
              color: Colors.green,
            ),
            title: Text("PHP"),
            subtitle: Text("Intermediate"),
            trailing: Icon(
              Icons.delete,
              color: Colors.red,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.arrow_forward,
              color: Colors.green,
            ),
            title: Text("JavaScript"),
            subtitle: Text("Intermediate"),
            trailing: Icon(
              Icons.delete,
              color: Colors.red,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.arrow_forward,
              color: Colors.green,
            ),
            title: Text("Dart / flutter"),
            subtitle: Text("Beginner"),
            trailing: Icon(
              Icons.delete,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
