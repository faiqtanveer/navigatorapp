import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<String> item = [];
  late String temp;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator App"),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            onChanged: (str) {
              temp = str;
            },
            maxLength: 28,
          ),
          RaisedButton(
            onPressed: () {
              setState(() {
                item.add(temp);
              });
            },
            child: Text('On Submit'),
          ),
          ListView(
            shrinkWrap: true,
            children: item.map((element) => Text(element)).toList(),
          )
        ],
      ),
    );
  }
}
