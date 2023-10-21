import 'package:flutter/material.dart';
import 'package:prak_layout/p4/event4.dart';
import 'package:prak_layout/p4/pertemuan4.dart';
import 'package:prak_layout/p4/profile4.dart';
import 'package:prak_layout/p4/verif4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavigationBarExample(),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(
            255, 255, 255, 255), // Ubah warna latar belakang aplikasi
      ),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    pertemuan4(),
    event4(),
    verif4(),
    profile4(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(216, 0, 50, 1),
        title: const Text('MyOshi'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups_3),
            label: 'Member',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Oshi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromRGBO(210, 43, 82, 1),
        unselectedItemColor: Color.fromRGBO(61, 12, 17, 1),
        onTap: _onItemTapped,
      ),
    );
  }
}
