import 'package:flutter/material.dart';
import 'package:trendyol/assets/images.dart';
import 'package:trendyol/data/titles.dart';

class First extends StatelessWidget {
  const First({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1, crossAxisCount: 4),
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(imageList[index]),
                ),
              ),
              Text(
                titles[index],
                style:
                    const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ],
          );
        });
  }
}
