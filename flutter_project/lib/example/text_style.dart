//几种不同文本格式
import 'package:flutter/material.dart';

void main() {
  runApp(textdemo());
}

class textdemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: new homepage(),
      title: "text style demo",
    );
  }
}

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("text style"),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Text(
              '红色+黑色删除线+25号',
              style: TextStyle(
                color: const Color(0xffff0000),
                // 文字装饰中间划，下滑，倾斜等
                decoration: TextDecoration.lineThrough,
                decorationColor: const Color(0xff000000),
                fontSize: 25.0,
              ),
            ),
          ),
          Center(
            child: Text(
              '橙色+下划线+24号',
              style: TextStyle(
                color: const Color(0xffff9900),
                decoration: TextDecoration.underline,
                fontSize: 24.0,
              ),
            ),
          ),
          Text(
            '虚线上划线+23号+倾斜',
            style: new TextStyle(
              decoration: TextDecoration.overline,
              decorationStyle: TextDecorationStyle.dashed,
              fontSize: 23.0,
              fontStyle: FontStyle.italic,
            ),
          ),
          new Text(
            'serif字体+24号',
            style: new TextStyle(
              fontFamily: 'serif',
              fontSize: 26.0,
            ),
          ),
          new Text(
            'monospace字体+24号+加粗',
            style: new TextStyle(
              fontFamily: 'monospace',
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          new Text(
            '天蓝色+25号+2行跨度',
            style: new TextStyle(
              color: const Color(0xff4a86e8),
              fontSize: 25.0,
              height: 2.0,
            ),
          ),
          new Text(
            '24号+2个字母间隔',
            style: new TextStyle(
              fontSize: 24.0,
              letterSpacing: 2.0,
            ),
          ),
        ],
      ),
    );
  }
}
