import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  ListViewPage({Key key}) : super(key: key);

  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {

  ScrollController _scrollController = new ScrollController();
  List<int> _numberList= new List();
  int _endItemImage = 0;

  @override
  void initState() {
    super.initState();
    _addMoreImageItems();

    _scrollController.addListener((){
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent){
        _addMoreImageItems();
      }
    }
    );
  }

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
      controller: _scrollController,
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


  void _addMoreImageItems(){
    for (var i = 1; i < 10; i++) {
      _endItemImage++;
      _numberList.add(_endItemImage);
    }
    setState(() {
      
    });
  }
}