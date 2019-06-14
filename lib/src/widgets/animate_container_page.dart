import 'dart:math';

import 'package:flutter/material.dart';

class AnimateContainerPage extends StatefulWidget {
  AnimateContainerPage({Key key}) : super(key: key);

  _AnimateContainerPageState createState() => _AnimateContainerPageState();
}

class _AnimateContainerPageState extends State<AnimateContainerPage> {
double _width = 50.0;
double _heigth = 50.0;

Color _color = Colors.blueAccent;

BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animate Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          width: _width,
          height: _heigth,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color
          ),
        ),),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.play_arrow),
          onPressed: _modifyForm, 
          ),
    );
  }

    void _modifyForm(){

      final random = Random();
            setState(() {
            _color= Color.fromRGBO(
              random.nextInt(255),
              random.nextInt(255),
              random.nextInt(255),
              2);
            _width= random.nextInt(200).toDouble();
            _heigth= random.nextInt(200).toDouble();
            _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
            });
          }
}