import 'package:flutter/material.dart';
import 'package:flutter_components_wigets_use_examples/src/widgets/alert_page.dart';
import 'package:flutter_components_wigets_use_examples/src/widgets/animate_container_page.dart';
import 'package:flutter_components_wigets_use_examples/src/widgets/avatar_file.dart';
import 'package:flutter_components_wigets_use_examples/src/widgets/card_page.dart';
import 'package:flutter_components_wigets_use_examples/src/widgets/home_page.dart';
import 'package:flutter_components_wigets_use_examples/src/widgets/input_page.dart';

Map<String,WidgetBuilder> getApplicationRoutes(){

  return <String,WidgetBuilder>{
        '/' : (BuildContext context) => HomePage(),
        'alert' : (BuildContext context) => AlertPage(),
        'avatar' : (BuildContext context) => AvatarPage(),
        'card' : (BuildContext context) => CardPage(),
        'animateContariner' : (BuildContext context) => AnimateContainerPage(),
        'inputs' : (BuildContext context) => InputPage(),
  };
}


