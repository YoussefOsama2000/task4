import 'cart.dart';
import 'package:card_dummy_app/cart.dart';
import 'package:card_dummy_app/login.dart';
import 'package:flutter/material.dart';
import 'favorite.dart';
import 'home.dart';
import 'details.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      'login': (context) => LoginPage(),
      'main': (context) => MainPage(),
      'details': (context) => Details(),
    },
    initialRoute: 'login',
  ));
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;
  List body = [HomePage(), Favorite(), Cart()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[selectedIndex],
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        currentIndex: selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black87,
        iconSize: 40,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: 'fav',
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: 'cart',
            icon: Icon(
              Icons.shopping_basket,
            ),
          ),
        ],
      ),
    );
  }
}
