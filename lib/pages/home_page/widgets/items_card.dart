import 'dart:math';

import 'package:flutter/material.dart';
import 'package:food_app_animations/const.dart';
import 'package:food_app_animations/models/Pizza.dart';
import 'package:food_app_animations/pages/detail_page/detail_page.dart';

class ItemsCard extends StatefulWidget {
  @override
  _ItemsCardState createState() => _ItemsCardState();
}

class _ItemsCardState extends State<ItemsCard> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
      viewportFraction: 0.8,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: PageView.builder(
        controller: _pageController,
        itemCount: listPizza.length,
        itemBuilder: (context, index) => buildCardItem(index),
      ),
    );
  }

  Widget buildCardItem(int index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
              index: index,
              pizza: listPizza[index],
            ),
          ),
        );
      },
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: 0.5 / 0.55,
            child: Container(
              padding: EdgeInsets.all(20),
              margin: const EdgeInsets.only(
                  bottom: 0, left: 20, right: 20, top: 50),
              decoration: BoxDecoration(
                  color: defaultContainer,
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                      image: AssetImage(
                        'assets/img/bg.png',
                      ),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    listPizza[index].title,
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Nunito'),
                  ),
                  SizedBox(height: 5),
                  Text(
                    listPizza[index].description,
                    style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                  ),
                  SizedBox(height: 15),
                  Text(
                    listPizza[index].prices[0],
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                  )
                ],
              ),
            ),
          ),
          AnimatedBuilder(
            animation: _pageController,
            builder: (context, child) {
              double value = 0;
              if (_pageController.position.haveDimensions) {
                value = index - _pageController.page!;
                value = (value * 0.5).clamp(-1, 1);
              }
              return Transform.rotate(
                angle: -pi * value,
                child: Hero(
                  tag: '$index',
                  child: listPizza[index].image,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
