import 'package:flutter/material.dart';
import 'package:food_app_animations/const.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> items = ['Popular', 'Pizza', 'Top Rated', 'Pasta', 'Food'];
  int itemSelected = 1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 14,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) => buildItem(index),
      ),
    );
  }

  Widget buildItem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          itemSelected = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
        child: Column(
          children: [
            AnimatedDefaultTextStyle(
              style: (itemSelected == index)
                  ? TextStyle(
                      fontSize: 21,
                      color: Colors.amber[700],
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.bold)
                  : const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Nunito'),
              duration: const Duration(milliseconds: 200),
              child: Text(items[index]),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              width: (itemSelected == index) ? 20 : 0,
              margin: const EdgeInsets.symmetric(vertical: 5.0),
              height: 5.0,
              decoration: BoxDecoration(
                color: accentColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

