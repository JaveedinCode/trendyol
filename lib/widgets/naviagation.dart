import 'package:flutter/material.dart';
import 'package:trendyol/screens/categories_screen.dart';
import 'package:trendyol/screens/home_screen.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int myIndex = 0;
  List<Widget> widgetList = [const HomeScreen(), const CategoriesScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetList[myIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        selectedItemColor: Colors.orange,
        currentIndex: myIndex,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Anasayfa'),
          BottomNavigationBarItem(
              icon: Icon(Icons.circle_outlined), label: 'Kategoriler'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favoriler'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: 'Sepetim'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Hesabim'),
        ],
      ),
    );
  }
}
