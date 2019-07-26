import 'package:flutter/material.dart';
import 'package:JEFF/pages/page_one.dart';

class PageHome extends StatefulWidget {
  PageHome({Key key}) : super(key: key);

  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title文本居中
        centerTitle: true,
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          // 添加组件图片，按键
          children: <Widget>[
            Image.asset(
              "image/222.png",
              width: 200.0,
              height: 150.0,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('page_one');
              },
              child: Text('Page One'),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(pageBuilder: (BuildContext context,
                        Animation animation, Animation secondaryAnimation) {
                      return PageOne();
                    }, transitionsBuilder: (BuildContext context,
                        Animation<double> animation,
                        Animation<double> secondaryAnimation,
                        Widget child) {
                      return FadeTransition(
                        child: child,
                        opacity: animation,
                      );
                    }));
              },
              child: Text('Page TWO'),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('page_list');
              },
              child: Text('Page List'),
            )
          ],
        ),
      ),
    );
  }
}
