import 'package:flutter/material.dart';
import 'package:medical_app_ui/view/home_page.dart';
import 'package:medical_app_ui/view/live_page.dart';
import 'package:medical_app_ui/view/setting_page.dart';
class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  List listPage = [
    HomePage(),LivePage(),SettingPage()
  ];
  int current=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:listPage.elementAt(current),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: current,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'HomePage',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.live_tv),
            label: 'Live',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),

        ],
        onTap: (index){
          setState(() {
            current=index;
          });
        },
      )
    );
  }
}
