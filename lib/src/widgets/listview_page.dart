import 'dart:async';

import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  ListViewPage({Key key}) : super(key: key);

  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {

  ScrollController _scrollController = new ScrollController();
  List<int> _numberList= new List();
  int _endItemImage = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _addMoreImageItems();

    _scrollController.addListener((){
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent){
        fetchData();
      }
    }
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Page'),
      ),
      body:Stack(
        children: <Widget>[
          _createListView(),
          _createLoading(),
        ],
      )
    );
  }

  Widget _createListView(){
    return RefreshIndicator(
      onRefresh: getPageOne,
          child: ListView.builder(
        controller: _scrollController,
        itemCount: _numberList.length,
        itemBuilder: (BuildContext context, int index){
          final imagen = _numberList[index];
          return FadeInImage(
            image:NetworkImage("https://picsum.photos/id/$imagen/500/300"),
            placeholder: AssetImage('assets/jar-loading.gif'),
            );
        },
      ),
    );
  }

  Widget _createLoading(){
    if(_isLoading){
      return  Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(),
            ],
          ),
          SizedBox(height: 15.0,)
        ],
      );
    }else{
      return Container();
    }
  }

  void _addMoreImageItems(){
    for (var i = 1; i < 10; i++) {
      _endItemImage++;
      _numberList.add(_endItemImage);
    }
    setState(() {
      
    });
  }

  Future<Null> fetchData() async{
    _isLoading = true;
    setState(() {});
    final duration = new Duration(seconds: 2);
      return new Timer(duration, responseHttp);
  }

  Future<Null> getPageOne() async{
    final duration = new Duration(seconds: 2);
    new Timer(duration, (){
    _numberList.clear();
    _endItemImage++;
    _addMoreImageItems();
    });
    return Future.delayed(duration);
  }

  void responseHttp(){
    _isLoading = false;

    _scrollController.animateTo(
      _scrollController.position.pixels + 300,
      curve: Curves.fastOutSlowIn,
      duration: Duration(milliseconds: 300)
    );
    _addMoreImageItems();

  }
}