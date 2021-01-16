import 'package:flutter/material.dart';

enum WhyFarther { about, sttings }

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("miskal"),
        actions: [
          PopupMenuButton<WhyFarther>(
            onSelected: (WhyFarther result) {
              // setState(() {
              //   _selection = result;
              // });
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<WhyFarther>>[
              const PopupMenuItem<WhyFarther>(
                value: WhyFarther.sttings,
                child: Text('الاعدادات'),
              ),
              const PopupMenuItem<WhyFarther>(
                value: WhyFarther.about,
                child: Text('حول التطبيق'),
              ),
            ],
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.centerRight,
              child: Text(
                'translate',
                style: TextStyle(fontSize: 22),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5)),
              child: TextField(
                maxLines: 8,
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.centerRight,
              width: 100,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  RaisedButton(
                    color: Colors.green,
                    child: Text(
                      "تشكيل",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  RaisedButton(
                    child: Text(
                      "مقولة عشوائية",
                      style: TextStyle(fontSize: 22),
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  RaisedButton(
                    child: Text(
                      "خيارات",
                      style: TextStyle(fontSize: 22),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              constraints: BoxConstraints(minHeight: 400),
              color: Colors.grey[200],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 35,
              ),
              label: "الرئيسية"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "المفضلة"),
          BottomNavigationBarItem(
              icon: Icon(Icons.work_outlined), label: "مشاريع"),
        ],
      ),
    );
  }
}
