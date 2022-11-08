import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget{
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child:Column(
          children: [
            Placeholder(
            color: Colors.blue,
            child: SizedBox(
            width: 200,
            height: 300,
            ),
          ),
            SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                width: 200,
                height: 70,
                color: Colors.amber,
              ),
            )
          ],
        ),
      ),
    );
  }
}