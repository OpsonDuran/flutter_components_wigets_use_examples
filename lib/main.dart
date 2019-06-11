import 'package:flutter/material.dart';
import 'package:flutter_components_wigets_use_examples/src/widgets/home_page.dart';
//import 'package:flutter_components_wigets_use_examples/src/widgets/home_temp.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HomePage()
    );
  }
}