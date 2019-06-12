import 'package:flutter/material.dart';
import 'package:flutter_components_wigets_use_examples/src/widgets/alert_page.dart';
import 'package:flutter_components_wigets_use_examples/src/widgets/avatar_file.dart';
import 'package:flutter_components_wigets_use_examples/src/widgets/home_page.dart';


void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      routes: <String,WidgetBuilder>{
        '/' : (BuildContext context) => HomePage(),
        'alert' : (BuildContext context) => AlertPage(),
        'avatar' : (BuildContext context) => AvatarPage(),
      },
    );
  }
}