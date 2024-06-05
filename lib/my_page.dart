import 'package:flutter/material.dart';
import 'package:flutter_exam/screens/home_page.dart';
import 'package:flutter_exam/screens/profile_screen.dart';
import 'package:flutter_exam/screens/search_screen.dart';
import 'package:flutter_exam/screens/tool_screen.dart';
class MyPage extends StatefulWidget{
  const MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage>{
  final List<Widget> _screens = [
    const HomePageScreen(),
    const SearchScreen(),
    const ToolScreen(),
    const ProfileScreen(),
  ];
  int _selectedIndex = 0;

  _changeTab(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurple,
        backgroundColor: Colors.deepPurple.shade500,
        unselectedItemColor: Colors.black45,
        onTap: (index) => _changeTab(index),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.search_off_outlined),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.home_repair_service_sharp,),label: "Tool"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],
      ),
    );
  }
}