import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valueSlider = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider Page"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _createSlider(),
            Expanded(child: _createImage()),
          ],),
      ),
    );
  }


  Widget _createSlider(){
    return Slider(
      activeColor: Colors.indigoAccent,
      label: "Size of image",
      value: _valueSlider,
      min: 10.0,
      max: 400.0,
      onChanged:(value) {
        setState(() {
        _valueSlider = value;
        });
      },
      );
  }

  Widget _createImage(){
    return Image(
      image: NetworkImage("https://cdn-images-1.medium.com/max/1200/1*lX7EFb4f8INlaP31jZ96Vg.png"),
      width: _valueSlider,
      fit: BoxFit.contain,
    );
  }
}