import 'package:flutter/material.dart';
import 'Tab/quanbu.dart';
import 'Tab/fengwu.dart';
import 'Tab/pinpai.dart';
import 'Tab/shangpin.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  late TabController _controller;
  List tabs = ['全部', '风物', '品牌', '商品'];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: _ImageBottom(context),
        title: _TextField(context),
        bottom: TabBar(
          tabs: tabs.map((e) => Tab(text: e)).toList(),
           controller: _controller,//获得名称
          unselectedLabelColor: Color(0xFFAAAAAA),//未选中时文字的颜色
          labelColor: Color(0xFFA98A62),//选中时文字的颜色
          labelStyle: TextStyle(fontSize: 20.0),//文字大小
          labelPadding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
          indicator: BoxDecoration(),//取消顶部导航栏的下滑线
        ),
      ),
      body: TabBarView(//创建顶部导航栏相关的页面
        controller: _controller,//把页面和顶部导航栏的名称绑定
        children: [quanbu(),fengwu(),pinpai(),shangpin()],//页面
      ),
    );
  }

  _ImageBottom(context) {
    return RaisedButton(
      onPressed: () {},
      elevation: 0.0,
      padding: EdgeInsets.fromLTRB(15, 8, 0, 8),
      child: Image.asset('images/left.png'),
      color: Colors.white,
      highlightColor: Colors.transparent,
      highlightElevation: 0,
      splashColor: Colors.transparent,
    );
  }

  _TextField(context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
      height: 38,
      decoration: BoxDecoration(
          color: Color(0xFFF5F5F5),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1.0, color: Color(0xFFF5F5F5))),
      child: TextField(
        onTap: () {},
        scrollPadding: EdgeInsets.all(20),
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Container(
              child: Image.asset('images/search.png'),
              margin: EdgeInsets.fromLTRB(10, 5, 0, 5)),
          contentPadding: EdgeInsets.fromLTRB(0, -12, 0, 0),
          hintStyle: TextStyle(color: Colors.black),
          hintText: '红肠',
        ),
      ),
    );
  }
}
