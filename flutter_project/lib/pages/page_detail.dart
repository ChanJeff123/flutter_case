import 'package:flutter/material.dart';
import 'dart:math' as math;

class PageDetail extends StatefulWidget {
  PageDetail({Key key}) : super(key: key);

  _PageDetailState createState() => _PageDetailState();
}

class _PageDetailState extends State<PageDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              // AnimationController(duration: const Duration(seconds: 2),vsync: this)
              SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: Hero(tag: 'my-hero', child: FlutterLogo()),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Back'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
