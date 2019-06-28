import 'package:flutter/material.dart';


class HomePageTemp extends StatelessWidget {

  final options = ['one','two','three','four','five'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components Temp'),
      ),
      body: ListView(
        children: _createIntemsShort(),
      ),
    );
  }

List<Widget> _createItems(){
  List<Widget> list = List<Widget>();
  for(String opt in options){
    final tempWidget = ListTile(
      title: Text(opt),
    );

    list..add(tempWidget)
        ..add(Divider());
  }
  return list;
}

List<Widget> _createIntemsShort(){
  return options.map((item){
      return Column(
        children: <Widget>[
          ListTile(
              title: Text(item + "!"),
              subtitle: Text("subtitle"),
              leading: Icon(Icons.account_balance),
              trailing: Icon(Icons.archive),
              onTap: (){},
          ),
          Divider()
        ],
      );
  }).toList();

}  
}