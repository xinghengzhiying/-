import 'package:flutter/material.dart';
import 'package:shangcheng/Tab/shuju.dart';

class fengwu extends StatefulWidget {
  const fengwu({Key? key}) : super(key: key);

  @override
  _fengwuState createState() => _fengwuState();
}

class _fengwuState extends State<fengwu> {
  bool a = false;
  void _chen() {
    setState(() {
      if (listData != []) {
        a = false;
        a ? buildNull(context) : buildList(context);
      } else {
        a = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return a ? buildNull(context) : buildList(context);
  }

  @override
  Widget buildList(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: Container(
        child: ListView.builder(
          itemCount: listData.length,
          padding: EdgeInsets.all(20),
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 0,
              color: Colors.white,
              margin: EdgeInsets.all(10),
              child: ListTile(
                onTap: () {},
                contentPadding: EdgeInsets.fromLTRB(25, 0, 0, 10),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.network(listData[index]['imageUrl']),
                ),
                subtitle: Text(listData[index]['author']),
                title: Container(
                  child: Text(listData[index]['title']),
                  margin: EdgeInsets.symmetric(vertical: 10),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  Widget buildNull(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 200, horizontal: 170),
        child: Column(
          children: [
            Image.asset('images/null.png', width: 200, height: 200),
            Text('暂无内容', style: TextStyle(color: Color(0xFFAAAAAA)))
          ],
        ),
      ),
    );
  }
}
