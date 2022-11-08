import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Eine App"),
        backgroundColor: Colors.green,
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
              macheZeile(),
              macheZeile(),
              macheZeile(),
              macheZeile(),
              macheZeile(),
              macheZeile(),
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
