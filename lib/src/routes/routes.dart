import 'package:flutter/material.dart';
import 'package:flutter_components_wigets_use_examples/src/widgets/alert_page.dart';
import 'package:flutter_components_wigets_use_examples/src/widgets/avatar_file.dart';
import 'package:flutter_components_wigets_use_examples/src/widgets/home_page.dart';

Map<String,WidgetBuilder> getApplicationRoutes(){

  return <String,WidgetBuilder>{
        '/' : (BuildContext context) => HomePage(),
        'alert' : (BuildContext context) => AlertPage(),
        'avatar' : (BuildContext context) => AvatarPage(),
  };
}


