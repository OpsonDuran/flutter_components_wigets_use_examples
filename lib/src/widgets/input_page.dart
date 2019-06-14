import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
String _name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:AppBar(
         title: Text('Input Page'),
       ),
       body: ListView(
         padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 10.0),
         children: <Widget>[
           _createInput(),
           Divider(),
           _createPerson(),
         ],
       ),
    );
  }


Widget _createInput(){
  return TextField(
    // autofocus: true,
    textCapitalization: TextCapitalization.sentences,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      counter: Text('Letter 0'),
      hintText: 'First Name',
      labelText: 'Name',
      helperText: 'first name complete',
      suffixIcon: Icon(Icons.accessibility_new),
      icon: Icon(Icons.account_box)

    ),
    onChanged: (value){
      setState(() {
      _name =value;
      });
      print( _name );
    },
  );
}

Widget _createPerson(){
  return ListTile(
    
    title: Text('Name is: $_name'),
  );
}
}