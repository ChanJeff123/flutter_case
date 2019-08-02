import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 添加builder里面的字体大小
      builder: (BuildContext context, Widget child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            //字体大小
            textScaleFactor: 0.5,
          ),
          child: child,
        );
      },
      title: 'Flutter Demo',
      // 添加主题色
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Flutter dio'),
    );
  }
}

//自定义material组件MyHomePage 实例化后面（可以带内容）,有状态的widget会变化
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// 继承
class _MyHomePageState extends State<MyHomePage> {
  FormData formData = new FormData.from(
    {
      "cityId": "40",
      "token": "46e13b7aab9bb77ee3358c3b672a2ae4",
    },
  );
  String iprint = "ceshi";
  void getHttp() async {
    try {
      Response response = await Dio().post(
        "http://freecityid.market.alicloudapi.com/whapi/json/alicityweather/briefcondition",
        data: formData,
        options: Options(
          headers: {
            "Authorization": "APPCODE 566b350440aa4c01bfe13823c0b25d1b",
          },
        ),
      );
      setState(() {
        iprint = response.toString();
      });
      print(response);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 脚手架scaffold
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(iprint),
            RaisedButton(
              onPressed: () {
                getHttp();
              },
              child: Icon(Icons.adb),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
