import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  ListViewPage({Key key}) : super(key: key);

  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {

  List<int> _numberList = [1,2,3,4,5,6];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Page'),
      ),
      body:_createListView(),
    );
  }

  Widget _createListView(){
    return ListView.builder(
      itemCount: _numberList.length,
      itemBuilder: (BuildContext context, int index){
        final imagen = _numberList[index];
        return FadeInImage(
          image:NetworkImage("https://picsum.photos/id/$imagen/500/300"),
          placeholder: AssetImage('assets/jar-loading.gif'),
          );
      },
    );
  }
}