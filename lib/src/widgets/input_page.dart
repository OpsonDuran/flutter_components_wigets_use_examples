import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
String _name;
String _email;
String _date;
TextEditingController _inputFieldDateController = TextEditingController();


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
           _createEmail(),
           Divider(),
           _createPassword(),
           Divider(),
           _createDate(context),
           Divider(),
           _createPerson(),
         ],
       ),
    );
  }


Widget _createInput(){
  return TextField(
    textCapitalization: TextCapitalization.sentences,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      counter: Text('Letters : ${ _name }'),
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
    },
  ); 
}


Widget _createEmail(){
  return TextField(
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
        border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      hintText: 'email@dom.com',
      labelText: 'Email',
      suffixIcon: Icon(Icons.alternate_email),
      icon: Icon(Icons.email)

    ),
    onChanged: (value){
      setState(() {
      _email =value;
      });
    },
  );
}

Widget _createPassword(){
  return TextField(
    obscureText: true,
    decoration: InputDecoration(
        border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      hintText: 'Password',
      labelText: 'Passowrd',
      suffixIcon: Icon(Icons.lock_open),
      icon: Icon(Icons.lock)

    ),
    onChanged: (value){
      setState(() {
        print(value);
      });
    },
  );
}

Widget _createDate(BuildContext context){
  return TextField(
    controller: _inputFieldDateController,
    enableInteractiveSelection: false,
    decoration: InputDecoration(
        border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      hintText: 'Birthdate',
      labelText: 'Birthdate',
      suffixIcon: Icon(Icons.perm_contact_calendar),
      icon: Icon(Icons.calendar_today)

    ),
    onTap: (){
      FocusScope.of(context).requestFocus(FocusNode());
      _selectDate(context);
    },
  ); 
}

_selectDate(BuildContext contex)async{
  DateTime picked = await showDatePicker(
    context: contex,
    initialDate: DateTime.now(),
    firstDate: DateTime(2019),
    lastDate: DateTime(2025),
    locale: Locale('es'),
  );

  if(picked!=null){
      setState(() {
        _date =picked.toString();
        _inputFieldDateController.text = _date;
      });
  }
}

Widget _createPerson(){
  return ListTile(
    title: Text('Name is: $_name'),
    subtitle: Text('Email is : $_email'),
  );
}

}