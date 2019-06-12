import 'package:flutter/material.dart';
import 'package:flutter_components_wigets_use_examples/src/providers/menu_provider.dart';
import 'package:flutter_components_wigets_use_examples/src/utils/icon_string_util.dart';
import 'package:flutter_components_wigets_use_examples/src/widgets/alert_page.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Components'),
        ),
        body: _list(),
        ),
    );
  }
  
  Widget _list(){
   
  return FutureBuilder(
    future: menuProvider.loadingData(),
    initialData: [],
    builder: (context,AsyncSnapshot<List<dynamic>> snapshot){
      return ListView(
        children: _listItems(snapshot.data,context),
      );
 
    },
  ); 
   
  }

  List<Widget> _listItems(List<dynamic> data,BuildContext context){

    final List<Widget> options =[];
    
    data.forEach((opt){
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: (){

          Navigator.pushNamed(context, opt['ruta']);


        },
        );
        options..add(widgetTemp)
               ..add(Divider());
    });

    return options;

  } 
}