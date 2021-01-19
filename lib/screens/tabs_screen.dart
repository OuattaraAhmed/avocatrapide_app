import 'package:avocat/screens/home_screen.dart';
import 'package:avocat/screens/msg_screen.dart';
import 'package:avocat/screens/profil_screen.dart';
import 'package:flutter/material.dart';

//import 'package:pharma/screens/home_screen.dart';
//import 'package:pharma/screens/msg_screen.dart';
// import 'package:pharma/screens/profil_screen.dart';

class TabsScreen extends StatefulWidget {


  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': HomeScreen(),
        'title': 'Menu',
      },
      {
        'page': MessageScreen(),
        'title': 'Actualité',
      },
      {
        'page': ProfilScreen(),
        'title': 'Profil',
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).primaryColor.withOpacity(0.4),
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.category,
            ),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.apps_outlined,
              ),
              label: 'Actualité'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
