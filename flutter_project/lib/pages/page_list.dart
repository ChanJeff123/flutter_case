import 'package:flutter/material.dart';

class PageList extends StatefulWidget {
  PageList({Key key}) : super(key: key);

  _PageListState createState() => _PageListState();
}

class _PageListState extends State<PageList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('page_detail');
              },
              child: ListTile(
                leading: Hero(tag: 'my-hero', child: FlutterLogo()),
                title: Text('Title'),
              ),
            ),
            Divider(),
            ListTile(
              leading: FlutterLogo(),
              title: Text('LIST'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
