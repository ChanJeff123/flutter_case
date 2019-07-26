// 页面布局 materialapp 里scaffold脚手架
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//自定义组件widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var yellow = Colors.yellow;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown,
        appBar: AppBar(
          backgroundColor: Colors.grey,
          leading: FlutterLogo(size: 50.0, colors: Colors.yellow),
          actions: <Widget>[
            IconButton(
              //RGB O为透明度opaque 0.0~1.0
              // color: Color.fromRGBO(150, 255, 20, 0.5)),
              color: Colors.yellow,
              icon: Icon(Icons.poll),
              onPressed: () {
                print("poll");
              },
            ),
            IconButton(
              color: Colors.yellow,
              icon: Icon(Icons.pool),
              onPressed: () {
                print("POOL");
              },
            ),
            IconButton(
              color: Colors.yellow,
              icon: Icon(Icons.power),
              onPressed: () {
                print("POWER");
              },
            ),
          ],
          title: Text(
            "FLUTTER DEMO TITLE文本",
          ),
          bottom: PreferredSize(
            child: Container(
              child: Center(
                child: Text("BOTTOM TEXT"),
              ),
              // child: Text("BOTTOM TEXT"),
              height: 25.0,
              width: double.infinity,
              color: Colors.yellow,
            ),
            preferredSize: Size(25, 50),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(30.0),
          child: Center(
            child: Text("scaffold bady text"),
          ),
          // child: Text("scaffold bady text"),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          shape: CircularNotchedRectangle(), // 底部导航栏打一个圆形的洞
          child: Row(
            children: [
              IconButton(icon: Icon(Icons.home)),
              SizedBox(), //中间位置空出
              IconButton(icon: Icon(Icons.business)),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceAround, //均分底部导航栏横向空间
          ),
        ),
        drawer: Drawer(
          child: Center(
            child: Text("DRAWER CENTER TEXT"),
          ),
        ),
        //floatingActionButtonLocation指定其在页面中悬浮的位置
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.grey,
          child: Icon(Icons.power_settings_new),
        ),
      ),
    );
  }
}
