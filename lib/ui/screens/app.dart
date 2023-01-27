import 'package:flutter/material.dart';
import 'package:insurancemockapp/ui/screens/home.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _currentPageIndex = 0;

  final _pages = [
    Home(),
    const SafeArea(
      child: Text(
        "Insights",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      ),
    ),
    const SafeArea(
      child: Text(
        "Refer a friend",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      ),
    ),
    const SafeArea(
      child: Text(
        "Profile",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentPageIndex,
        onTap: (int index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud_circle_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.speed_outlined),
            label: 'Insights',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervisor_account_rounded),
            label: 'Refer a friend',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
