import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trendyol/screens/categories_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/assets/images/images36.jpg'),
                fit: BoxFit.cover)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: IconButton(
                  color: Colors.grey,
                  onPressed: () {},
                  icon: const FaIcon(FontAwesomeIcons.house)),
              label: 'Anasayfa'),
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CategoriesScreen(),
                        ));
                  },
                  icon: const Icon(FontAwesomeIcons.circle)),
              label: 'Kategoriler'),
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.favorite)),
              label: 'Favoriler'),
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {},
                  icon: const FaIcon(FontAwesomeIcons.cartShopping)),
              label: 'Sepetim'),
          BottomNavigationBarItem(
              icon:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
              label: 'Anasayfa'),
        ],
      ),
    );
  }
}
