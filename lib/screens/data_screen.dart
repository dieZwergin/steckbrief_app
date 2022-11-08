import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataScreen extends StatelessWidget{
  const DataScreen({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Datenschutzeinstellungen"),
      ),
      body: Stack(
        children: [
          Container( //Hintergrund
            width: width,
            height: height,
            color: Colors.white,
          ),
          Positioned(
            //top: 200,
            //left: 100,
            child: Container(
              width: width,
              height: height*0.1,
              child: Text(
                "Wir benötigen Ihre Zustimmung",
                style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}