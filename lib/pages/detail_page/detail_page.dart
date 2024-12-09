// import 'package:flutter/material.dart';
// import 'package:food_app_animations/models/Pizza.dart';
// import 'package:food_app_animations/pages/detail_page/widgets/container_change_price.dart';
// import 'package:food_app_animations/pages/detail_page/widgets/container_image_price.dart';
// import 'package:food_app_animations/pages/detail_page/widgets/my_widget.dart';

// class DetailPage extends StatelessWidget {
//   final Pizza pizza;
//   final int index;

//   const DetailPage({super.key, required this.pizza, required this.index});
//   @override
//   Widget build(BuildContext context) {
//     ValueNotifier myWidget = ValueNotifier(MyWidget(
//       key: const ValueKey(1),
//       price: pizza.prices[0],
//     ));

//     return Scaffold(
//       body: ValueListenableBuilder(
//         valueListenable: myWidget,
//         builder: (context, value, child) {
//           return Stack(
//             children: [
//               Container(
//                 height: double.infinity,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [
//                       Colors.black.withOpacity(0.95),
//                       const Color.fromARGB(255, 32, 4, 4).withOpacity(0.9),
//                       Colors.black.withOpacity(0.95),
//                     ],
//                     stops: const [0.0, 0.4, 0.8],
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                   ),
//                 ),
//                 child: Column(
//                   children: [
//                     ContainerImagePrice(
//                       image: pizza.image,
//                       index: index,
//                       myWidget: myWidget.value,
//                     ),
//                     Flexible(
//                       flex: 1,
//                       child: ContainerChangePrice(
//                         title: pizza.title,
//                         description: pizza.description,
//                         myWidget: myWidget,
//                         prices: pizza.prices,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 20, top: 50),
//                 child: Align(
//                   alignment: Alignment.topLeft,
//                   child: IconButton(
//                     icon: const Icon(
//                       Icons.arrow_back_ios,
//                       color: Colors.white,
//                     ),
//                     onPressed: () {
//                       Navigator.pop(context);
//                     },
//                   ),
//                 ),
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }


// lib/pages/detail_page/detail_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_app_animations/models/Pizza.dart';
import 'package:food_app_animations/pages/detail_page/widgets/container_change_price.dart';
import 'package:food_app_animations/pages/detail_page/widgets/container_image_price.dart';

class DetailPage extends ConsumerWidget {
  final Pizza pizza;
  final int index;

  const DetailPage({super.key, required this.pizza, required this.index});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.95),
                  const Color.fromARGB(255, 32, 4, 4).withOpacity(0.9),
                  Colors.black.withOpacity(0.95),
                ],
                stops: const [0.0, 0.4, 0.8],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              children: [
                ContainerImagePrice(
                  image: pizza.image,
                  index: index,
                  // myWidget: myWidget,
                ),
                Flexible(
                  flex: 1,
                  child: ContainerChangePrice(
                    title: pizza.title,
                    description: pizza.description,
                    prices: pizza.prices,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 50),
            child: Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
