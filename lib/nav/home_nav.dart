import 'package:flutter/material.dart';

class HomeNav extends StatefulWidget {
  const HomeNav({super.key});

  @override
  State<HomeNav> createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    Center(
      child: Text(
        "Welcome, Home Screen",
        style: TextStyle(color: Colors.blue, fontSize: 20),
      ),
    ),
    Center(
      child: Text(
        "Welcome, Chat Screen",
        style: TextStyle(color: Colors.blue, fontSize: 20),
      ),
    ),
    Center(
      child: Text(
        "Welcome, Community",
        style: TextStyle(color: Colors.blue, fontSize: 20),
      ),
    ),
    Center(
      child: Text(
        "Create a profile ",
        style: TextStyle(color: Colors.blue, fontSize: 20),
      ),
    ),
  ];

  void _onItemtapped(int index){
      setState(() {
        _selectedIndex = index;
      });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(backgroundColor: Colors.blueGrey, title: Text("Welcome")),
      drawer: Drawer(
        backgroundColor: Colors.grey,
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor: Colors.blueGrey,
        type: BottomNavigationBarType
            .fixed, //for display 4 items in the bottom nav bar
            onTap: _onItemtapped,
            selectedItemColor: Colors.deepPurple,
            unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "Community"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
