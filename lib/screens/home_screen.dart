import 'package:flutter/material.dart';
import 'package:mishkal_app_new/screens/save_screen.dart';
import 'package:mishkal_app_new/screens/tashkil_screen.dart';

enum WhyFarther { about, sttings }

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int screenIndex = 0;

  PopupMenuButton get getMenu => PopupMenuButton<WhyFarther>(
        onSelected: (WhyFarther result) {
          // TODO: implement settiings option
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
      );

  BottomNavigationBar get getBottombar => BottomNavigationBar(
        onTap: (index) {
          setState(() {
            screenIndex = index;
          });
        },
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
      );

  Widget getScreenByIndex(int index) {
    if (index == 1) return SaveScreen();
    return TashkilScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("miskal"),
        actions: [getMenu],
      ),
      body: SafeArea(
        child: getScreenByIndex(screenIndex),
      ),
      bottomNavigationBar: getBottombar,
    );
  }
}
