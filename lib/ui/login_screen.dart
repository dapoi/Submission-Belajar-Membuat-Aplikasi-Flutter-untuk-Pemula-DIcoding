import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imovie/ui/main_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final textController = TextEditingController();
  String? displayName;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("i-Movie",
              style: TextStyle(fontStyle: FontStyle.italic, letterSpacing: 10)),
        ),
        body: SafeArea(
          minimum: EdgeInsets.all(10),
          child: Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  "Welcome to iMovie App",
                  style: TextStyle(
                      color: Colors.red,
                      fontStyle: FontStyle.italic,
                      fontSize: 24),
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Please, input your name",
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 40,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextField(
                        controller: textController,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.grey),
                            hintText: "Your name"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  setState(() {
                    displayName = textController.text;
                  });
                  if (displayName != null) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MainScreen(displayName: displayName.toString());
                    }));
                  } else {
                    return null;
                  }
                },
                child: Text(
                  "Apply",
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red)),
              ),
            ],
          )),
        ),
      );

  @override
  void dispose() {
    textController.dispose();
  }
}
