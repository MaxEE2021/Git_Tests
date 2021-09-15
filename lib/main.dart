import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  // const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Activity2',
      // theme: ThemeData(primarySwatch: Colors.blue,),
      home: MyhomePage(),
    );
  }
}




class MyhomePage extends StatelessWidget {
  // const MyhomePage({Key? key}) : super(key: key);
  MyhomePage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(

      ),
    );
  }
}
