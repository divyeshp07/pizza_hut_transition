import 'package:flutter/material.dart';
import 'package:food_app_animations/pages/home_page/widgets/categories.dart';
import 'package:food_app_animations/pages/home_page/widgets/search_box.dart';

import 'address_information.dart';
import 'items_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SearchBox(),
          const Categories(),
          ItemsCard(),
          AddressInformation(),
        ],
      ),
    );
  }
}
