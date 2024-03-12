import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trendyol/assets/images.dart';
import 'package:trendyol/data/titles.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_back)),
            title: Text('Kateqoriyalar',
                style: GoogleFonts.lobster().copyWith(fontSize: 15)),
          ),
          body:
              // children: [
              //   Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Container(
              //       decoration: BoxDecoration(
              //           color: Colors.grey,
              //           borderRadius: BorderRadius.circular(15)),
              //       height: 45,
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           const Padding(
              //             padding: EdgeInsets.only(left: 8.0),
              //             child: Text('Axtarış',
              //                 style: TextStyle(fontWeight: FontWeight.bold)),
              //           ),
              //           IconButton(
              //               onPressed: () {}, icon: const Icon(Icons.search))
              //         ],
              //       ),
              //     ),
              //   ),
              GridView.builder(
            physics: const BouncingScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemCount: titles.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Expanded(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(imageList[index]))),
                  Text(titles[index])
                ],
              );
            },
          )
          // )
          ),
    );
  }
}
