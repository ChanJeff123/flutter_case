import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  PageOne({Key key}) : super(key: key);

  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page One'),
      ),
       body: Center(
         child: RaisedButton(
           onPressed: () {
             Navigator.of(context).pop();
           },
           child: Text('Back'),
         ),
       ),
    );
  }
}