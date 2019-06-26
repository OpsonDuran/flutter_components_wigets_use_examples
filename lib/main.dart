import 'package:flutter/material.dart';
import 'package:flutter_components_wigets_use_examples/src/routes/routes.dart';
import 'package:flutter_components_wigets_use_examples/src/widgets/alert_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'), // English
        const Locale('es'), // Soanish
        ],
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute:(settings){
        print('ruta llamada : ${settings.name}');

      return MaterialPageRoute(
        builder:(BuildContext context) => AlertPage()
        );
      

      } ,
    );
  }
}