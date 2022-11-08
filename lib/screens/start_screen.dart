import 'package:flutter/material.dart';
import 'package:steckbrief_app/screens/second_screen.dart';
import 'package:steckbrief_app/screens/stack_screen.dart';

import 'data_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Eine App"),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset("assets/Weihnachten2018.jpg"),

              macheZeile(
                text: "Alter: 25"
              ),
              macheZeile(
                  text: "Augenfarbe: blau"
              ),
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()),
                );
              },
                child: Text("Hallo!"),
              ),
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => StackScreen()),
                );
              },
                child: Text("StackScreen"),
              ),
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DataScreen()),
                );
              },
                child: Text("DataScreen"),
              ),
              macheZeile(),
            ],
          ),
        ),
      ),
    );
  }

  Widget macheZeile({text: "hallo"}) {
    return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 400,
              color: Colors.black12,
              child: Text(text,
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.red,
                      fontSize: 48.0,
                      fontWeight: FontWeight.bold
                  )),
            ),
          );
  }
}
