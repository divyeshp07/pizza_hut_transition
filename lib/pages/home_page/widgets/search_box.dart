import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app_animations/const.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  'assets/icons/menu.svg',
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Nunito'),
                  children: [
                    const TextSpan(text: 'Pizza'),
                    TextSpan(
                        text: 'corner',
                        style: TextStyle(color: Colors.amber[700])),
                  ],
                ),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  'assets/icons/bag.svg',
                  color: Colors.white,
                  height: 30,
                ),
                onPressed: () {},
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
            decoration: BoxDecoration(
              color: defaultContainer,
              borderRadius: BorderRadius.circular(40),
            ),
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(CupertinoIcons.search,
                    color: Colors.black.withOpacity(0.7)),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: 'Search',
                hintStyle: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'Nunito',
                    color: Colors.black87,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
