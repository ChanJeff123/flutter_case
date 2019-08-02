// 按键组件
// aisedButton ：凸起的按钮，其实就是 Material Design 风格的 Button
// FlatButton ：扁平化的按钮
// OutlineButton：线框按钮
// IconButton ：图标按钮
// ButtonBar：按钮组
// FloatingActionButton:浮动按钮
// 常用属性
// 在flutter中，按钮组件有以下常用属性：

// onPressed ：
// 必填参数，按下按钮时触发的回调，接收一个
// 方法，传 null 表示按钮禁用，会显示禁用相关
// 样式
// child ：文本控件
// textColor ：文本颜色
// color ：文本颜色
// disabledColor ：按钮禁用时的颜色
// disabledTextColor ：按钮禁用时的文本颜色
// splashColor ：点击按钮时水波纹的颜色
// highlightColor ：点击（长按）按钮后按钮的颜色
// elevation ：阴影的范围，值越大阴影范围越大
// padding ：内边距
// shape  ：设置按钮的形状
import 'package:flutter/material.dart';

void main() {
  runApp(homepage());
}

class homepage extends StatelessWidget {
  const homepage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BUTTON demo",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("button_demo"),
          actions: <Widget>[
            IconButton(
              color: Colors.blueGrey,
              icon: Icon(Icons.add_call),
              onPressed: () {
                print("add_call");
              },
            ),
            IconButton(
              color: Color.fromRGBO(150, 100, 0, 0.8),
              icon: Icon(
                Icons.add_location,
              ),
              onPressed: () {
                print("object");
              },
            ),
          ],
        ),
        body: buttonbody(),
      ),
    );
  }
}

class buttonbody extends StatelessWidget {
  const buttonbody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      // 居中行
      child: Column(
        children: <Widget>[
          Row(
            // 自适应剧中列
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text(
                  "raisebutton22",
                  style: TextStyle(fontSize: 22.0),
                ),
                onPressed: () {
                  // routepage
                  null;
                },
              ),
              SizedBox(
                child: Center(
                  child: Text("sizebox隔开"),
                ),
                width: 100,
                height: 50,
              ),
              IconButton(
                iconSize: 50,
                focusColor: Colors.blue,
                icon: Icon(Icons.send),
                onPressed: (null),
              ),
            ],
          ),
          Container(
            height: 50,
            width: 200,
            color: Colors.blueGrey,
            // 容器里padding
            padding: EdgeInsets.only(left: 100),
            child: Text("THIS IS CONTAINER"),
          ),
          Container(
            width: 100,
            height: 100,
            child: RaisedButton(
              child: Text(
                "龟",
                // 字体大小
                textScaleFactor: 4,
              ),
              color: Colors.green,
              textColor: Colors.red,
              elevation: 20,
              shape: CircleBorder(
                side: BorderSide(
                  width: 5,
                  color: Color.fromRGBO(255, 255, 255, 1.0),
                ),
              ),
              onPressed: () {
                // routepage
                null;
              },
            ),
          ),
          SizedBox(
            height: 50,
          ),
          RaisedButton(
            child: Text("圆角红底白字55 影"),
            color: Colors.red,
            textColor: Colors.white,
            elevation: 55,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            onPressed: () {
              // routepage
              null;
            },
          ),
          RaisedButton.icon(
            icon: Icon(Icons.search),
            label: Text("raisebutton.icon"),
            color: Colors.blue,
            textColor: Colors.brown,
            onPressed: () {
              Null;
            },
          ),

          // 按键组
          ButtonBar(
            children: <Widget>[
              MyButton(
                width: 120,
                text: "DIY BUTTON",
                pressed: () {
                  Null;
                },
              ),
              MyButton(
                text: "按键组1",
                height: 60,
                width: 120,
                pressed: () {
                  print("ANJIAN");
                },
              ),
            ],
          ),

          DropDownStateWidget(),
          FloatingActionButton(
            onPressed: () {
              print('button click');
            },
            foregroundColor: Colors.white,
            backgroundColor: Colors.amber,
            child: new Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final text;
  final pressed;
  final double width;
  final double height;
  const MyButton(
      {this.text = '', this.pressed = null, this.width = 80, this.height = 30});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      child: RaisedButton(
        child: Text(this.text),
        onPressed: this.pressed,
      ),
    );
  }
}

List<DropdownMenuItem> generateItemList() {
  List<DropdownMenuItem> items = new List();
  DropdownMenuItem item1 =
      new DropdownMenuItem(value: '张三', child: new Text('张三'));
  DropdownMenuItem item2 =
      new DropdownMenuItem(value: '李四', child: new Text('李四'));
  DropdownMenuItem item3 =
      new DropdownMenuItem(value: '王二', child: new Text('王二'));
  DropdownMenuItem item4 =
      new DropdownMenuItem(value: '麻子', child: new Text('麻子'));
  items.add(item1);
  items.add(item2);
  items.add(item3);
  items.add(item4);
  return items;
}

class DropDownStateWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DropDownState();
}

class DropDownState extends State<DropDownStateWidget> {
  //下拉菜单item点击之后获取到的值
  var selectItemValue;
  /*DropDownState(){
    selectItemValue=getDropdownMenuItem()[0].value;
  }*/
  @override
  Widget build(BuildContext context) {
    // DropdownButtonHideUnderline：下拉菜单展示的内容处没有下划线
    return new DropdownButtonHideUnderline(
      child: new DropdownButton(
        hint: new Text('下拉菜单选择'),
        //设置这个value之后,选中对应位置的item，
        //再次呼出下拉菜单，会自动定位item位置在当前按钮显示的位置处
        value: selectItemValue,
        items: generateItemList(),
        onChanged: (T) {
          setState(() {
            selectItemValue = T;
          });
        },
      ),
    );
  }
}
