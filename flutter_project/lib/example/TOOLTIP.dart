import 'package:flutter/material.dart';

void main() {
  runApp(homepage());
}

class ToolTipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tooltip提示'),
      ),
      body: Center(
        child: Tooltip(
          // 长按显示的内容
          message: '点鸡提示',
          // 网络图
          child: Image.network(
              'https://tse1-mm.cn.bing.net/th?id=OIP.x0t7u-DWIpcmEY_6M9wNAQHaIU&w=175&h=197&c=7&o=5&pid=1.7'),
        ),
      ),
    );
  }
}

class homepage extends StatelessWidget {
  const homepage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TOOLTIP demo",
      debugShowCheckedModeBanner: false,
      home: ToolTipDemo(),
    );
  }
}
