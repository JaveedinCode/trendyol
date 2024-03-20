import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trendyol/data/images.dart';
import 'package:trendyol/data/images1.dart';
import 'package:trendyol/data/images2.dart';
import 'package:trendyol/data/images3.dart';
import 'package:trendyol/data/images4.dart';
import 'package:trendyol/data/images5.dart';
import 'package:trendyol/data/titles.dart';
import 'package:trendyol/data/titles1.dart';
import 'package:trendyol/data/titles1v2.dart';
import 'package:trendyol/data/titles2.dart';
import 'package:trendyol/data/titles3.dart';
import 'package:trendyol/data/titles3v2.dart';
import 'package:trendyol/data/titles4.dart';
import 'package:trendyol/data/titles4v2.dart';
import 'package:trendyol/data/titles5.dart';
import 'package:trendyol/screens/home_screen.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kateqoriyalar',
          style: GoogleFonts.lobster().copyWith(
            fontSize: 15,
          ),
        ),
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          SizedBox(
            height: 200,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemCount: titles.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Expanded(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(imageList[index])),
                    ),
                    Text(
                      titles[index],
                      style: const TextStyle(
                          fontSize: 10, fontWeight: FontWeight.w500),
                    )
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('Qadın geyim',
                    style: GoogleFonts.lobster()
                        .copyWith(fontWeight: FontWeight.w100, fontSize: 18))
              ],
            ),
          ),
          SizedBox(
            height: 210,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 3, crossAxisCount: 2),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Image.asset(imageList1[index])),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  titles1[index],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                ),
                                Text(
                                  titles1v2[index],
                                  style: const TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('Ev',
                    style: GoogleFonts.lobster()
                        .copyWith(fontWeight: FontWeight.w100, fontSize: 18))
              ],
            ),
          ),
          SizedBox(
            height: 280,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1, crossAxisCount: 3),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              titles2[index],
                              style: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(80),
                            child: Image.asset(imageList2[index]),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('Hobbi & Həyat',
                    style: GoogleFonts.lobster()
                        .copyWith(fontWeight: FontWeight.w100, fontSize: 18))
              ],
            ),
          ),
          SizedBox(
            height: 140,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 3, crossAxisCount: 2),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Image.asset(imageList3[index])),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  titles3[index],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                ),
                                Text(
                                  titles3v2[index],
                                  style: const TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('Elektronika',
                    style: GoogleFonts.lobster()
                        .copyWith(fontWeight: FontWeight.w100, fontSize: 18))
              ],
            ),
          ),
          SizedBox(
            height: 210,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 3, crossAxisCount: 2),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Image.asset(imageList4[index])),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  titles4[index],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                ),
                                Text(
                                  titles4v2[index],
                                  style: const TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('Supermarket & Kosmetika',
                    style: GoogleFonts.lobster()
                        .copyWith(fontWeight: FontWeight.w100, fontSize: 18))
              ],
            ),
          ),
          SizedBox(
            height: 280,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1, crossAxisCount: 3),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              titles5[index],
                              style: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(80),
                            child: Image.asset(imageList5[index]),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: IconButton(
                  color: Colors.grey,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ));
                  },
                  icon: const FaIcon(FontAwesomeIcons.house)),
              label: 'Anasayfa'),
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {}, icon: const Icon(FontAwesomeIcons.circle)),
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
