import 'package:flutter/material.dart';
import 'package:registration_app/registration/Login.dart';
import 'package:registration_app/registration/home.dart';
import 'package:registration_app/registration/register.dart';

void main() {
  runApp(const MaterialApp(
    home: MainClass()
    // routes: {
    //   '/': (context) => const Home(),
    //   '/register': (context) => const Register(),
    // },
  ));
}

class MainClass extends StatefulWidget {
  const MainClass({super.key});


  @override
  State<MainClass> createState() => _MainClassState();
}

class _MainClassState extends State<MainClass> {

  int _selectedIndex = 0;
  Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
    0: GlobalKey<NavigatorState>(),
    1: GlobalKey<NavigatorState>(),
    2: GlobalKey<NavigatorState>(),
  };
  final List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const Register(),
    const Login()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:buildNavigator(),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightBlue,
        onTap: _onItemTapped,
      ),
    );
  }

  buildNavigator() {
    return Navigator(
      key: navigatorKeys[_selectedIndex],
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (_) => _widgetOptions.elementAt(_selectedIndex));
      },
    );
  }
}


// }