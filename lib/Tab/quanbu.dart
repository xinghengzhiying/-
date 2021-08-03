import 'package:flutter/material.dart';
import 'package:shangcheng/xian.dart';

class quanbu extends StatefulWidget {
  const quanbu({Key? key}) : super(key: key);

  @override
  _quanbuState createState() => _quanbuState();
}

class _quanbuState extends State<quanbu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF5F5F5), body: buildColumn(context));
  }

  @override
  Widget buildList(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Container(
              child: Text('已添加风物'), margin: EdgeInsets.fromLTRB(30, 30, 0, 10))
        ]),
        Expanded(child: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 0,
              color: Colors.white,
              margin: EdgeInsets.fromLTRB(30, 0, 30, 15),
              child: ListTile(
                contentPadding: EdgeInsets.fromLTRB(25, 0, 0, 10),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.network(
                      'https://www.itying.com/images/flutter/1.png'),
                ),
                subtitle: Text('上海 · 崇明区'),
                title: Container(
                  child:
                      Text('崇明金丝瓜', style: TextStyle(color: Color(0xFF333333))),
                  margin: EdgeInsets.symmetric(vertical: 10),
                ),
              ),
            );
          },
        ))
      ],
    );
  }

  @override
  Widget buildColumn(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Container(
              child: Text('风物'), margin: EdgeInsets.fromLTRB(30, 30, 0, 10))
        ]),
        Card(
          elevation: 0,
          color: Colors.white,
          margin: EdgeInsets.fromLTRB(30, 0, 30, 15),
          child: ListTile(
            onTap: (){},
            contentPadding: EdgeInsets.fromLTRB(25, 0, 0, 10),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child:
                  Image.network('https://www.itying.com/images/flutter/1.png'),
            ),
            subtitle: Text('上海 · 崇明区'),
            title: Container(
              child: Text('崇明金丝瓜', style: TextStyle(color: Color(0xFF333333))),
              margin: EdgeInsets.symmetric(vertical: 10),
            ),
          ),
        ),
        Card(
          elevation: 0,
          color: Colors.white,
          margin: EdgeInsets.fromLTRB(30, 0, 30, 15),
          child: ListTile(
            onTap: (){},
            contentPadding: EdgeInsets.fromLTRB(25, 0, 0, 10),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child:
                  Image.network('https://www.itying.com/images/flutter/1.png'),
            ),
            subtitle: Text('上海 · 崇明区'),
            title: Container(
              child: Text('崇明金丝瓜', style: TextStyle(color: Color(0xFF333333))),
              margin: EdgeInsets.symmetric(vertical: 10),
            ),
          ),
        ),
        Card(
          elevation: 0,
          color: Colors.white,
          margin: EdgeInsets.fromLTRB(30, 0, 30, 20),
          child: ListTile(
            onTap: (){},
            contentPadding: EdgeInsets.fromLTRB(25, 0, 0, 10),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child:
                  Image.network('https://www.itying.com/images/flutter/1.png'),
            ),
            subtitle: Text('上海 · 崇明区'),
            title: Container(
              child: Text('崇明金丝瓜', style: TextStyle(color: Color(0xFF333333))),
              margin: EdgeInsets.symmetric(vertical: 10),
            ),
          ),
        ),
        Row(children: [
          Container(
            child: Text(
              '查看全部',
              style: TextStyle(color: Color(0xFFAAAAAAA)),
            ),
            margin: EdgeInsets.fromLTRB(240, 0, 0, 0),
          ),
          Icon(Icons.arrow_forward, color: Color(0xFFAAAAAAAA))
        ]),
        Row(children: [
          Container(
              child: Text('品牌'), margin: EdgeInsets.fromLTRB(30, 20, 0, 10))
        ]),
        Card(
          elevation: 0,
          color: Colors.white,
          margin: EdgeInsets.fromLTRB(30, 0, 30, 15),
          child: ListTile(
            onTap: (){},
            contentPadding: EdgeInsets.fromLTRB(25, 0, 0, 10),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child:
                  Image.network('https://www.itying.com/images/flutter/1.png'),
            ),
            subtitle: Text('北京市'),
            title: Container(
              child: Text('全聚德', style: TextStyle(color: Color(0xFF333333))),
              margin: EdgeInsets.symmetric(vertical: 10),
            ),
          ),
        ),
        Row(children: [
          Container(
              child: Text('商品'), margin: EdgeInsets.fromLTRB(30, 10, 0, 10))
        ]),
        Card(
          elevation: 0,
          color: Colors.white,
          margin: EdgeInsets.fromLTRB(30, 0, 30, 15),
          child: ListTile(
            onTap: (){},
            contentPadding: EdgeInsets.fromLTRB(25, 0, 0, 10),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child:
                  Image.network('https://www.itying.com/images/flutter/1.png'),
            ),
            subtitle: Text('￥680', style: TextStyle(color: Color(0xFFAE2A2A))),
            title: Container(
              child: Text('九多肉多', style: TextStyle(color: Color(0xFF333333))),
              margin: EdgeInsets.symmetric(vertical: 10),
            ),
          ),
        ),
        Card(
          elevation: 0,
          color: Colors.white,
          margin: EdgeInsets.fromLTRB(30, 0, 30, 15),
          child: ListTile(
            onTap: (){},
            contentPadding: EdgeInsets.fromLTRB(25, 0, 0, 10),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child:
                  Image.network('https://www.itying.com/images/flutter/1.png'),
            ),
            subtitle: Text('￥680', style: TextStyle(color: Color(0xFFAE2A2A))),
            title: Container(
              child: Text('九多肉多', style: TextStyle(color: Color(0xFF333333))),
              margin: EdgeInsets.symmetric(vertical: 10),
            ),
          ),
        )
      ],
    );
  }
}
