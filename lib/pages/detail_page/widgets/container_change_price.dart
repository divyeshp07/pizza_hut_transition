// // import 'package:flutter/material.dart';
// // import 'package:flutter/widgets.dart';
// // import 'package:flutter_svg/flutter_svg.dart';
// // import 'package:food_app_animations/const.dart';
// // import 'package:food_app_animations/pages/detail_page/widgets/my_widget.dart';

// // class ContainerChangePrice extends StatefulWidget {
// //   final String title, description;
// //   final ValueNotifier myWidget;
// //   final List<String> prices;

// //   const ContainerChangePrice(
// //       {Key? key,
// //       required this.title,
// //       required this.description,
// //       required this.prices,
// //       required this.myWidget})
// //       : super(key: key);
// //   @override
// //   _ContainerChangePriceState createState() => _ContainerChangePriceState();
// // }

// // class _ContainerChangePriceState extends State<ContainerChangePrice> {
// //   int itemSelected = 0;
// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       children: [
// //         Text(
// //           widget.title,
// //           style: const TextStyle(
// //               color: Colors.white,
// //               fontSize: 30,
// //               fontWeight: FontWeight.w700,
// //               fontFamily: 'Nunito'),
// //         ),
// //         const SizedBox(height: 10),
// //         Text(
// //           widget.description,
// //           style: const TextStyle(
// //               color: Colors.white,
// //               fontSize: 20,
// //               fontWeight: FontWeight.w400,
// //               fontFamily: 'Nunito'),
// //         ),
// //         const SizedBox(height: 10),
// //         SizedBox(
// //           height: 90,
// //           child: ListView.builder(
// //             shrinkWrap: true,
// //             itemCount: 3,
// //             scrollDirection: Axis.horizontal,
// //             itemBuilder: (context, index) {
// //               return GestureDetector(
// //                 onTap: () {
// //                   setState(() {
// //                     itemSelected = index;
// //                     widget.myWidget.value = (index == 0)
// //                         ? MyWidget(
// //                             price: widget.prices[0],
// //                             key: const ValueKey(1),
// //                           )
// //                         : (index == 1)
// //                             ? MyWidget(
// //                                 price: widget.prices[1],
// //                                 key: const ValueKey(2),
// //                               )
// //                             : MyWidget(
// //                                 price: widget.prices[2],
// //                                 key: const ValueKey(3),
// //                               );
// //                   });
// //                 },
// //                 child: AnimatedContainer(
// //                   duration: const Duration(milliseconds: 200),
// //                   alignment: Alignment.center,
// //                   margin: const EdgeInsets.all(15),
// //                   width: 90,
// //                   decoration: (itemSelected == index)
// //                       ? BoxDecoration(
// //                           color: primaryColor,
// //                           borderRadius: BorderRadius.circular(30))
// //                       : BoxDecoration(
// //                           color: defaultContainer,
// //                           borderRadius: BorderRadius.circular(30),
// //                         ),
// //                   child: (index == 0)
// //                       ? const Text('S',
// //                           style: TextStyle(
// //                               fontSize: 25, fontWeight: FontWeight.bold))
// //                       : (index == 1)
// //                           ? const Text('M',
// //                               style: TextStyle(
// //                                   fontSize: 25, fontWeight: FontWeight.bold))
// //                           : const Text('L',
// //                               style: TextStyle(
// //                                   fontSize: 25, fontWeight: FontWeight.bold)),
// //                 ),
// //               );
// //             },
// //           ),
// //         ),
// //         SizedBox(height: MediaQuery.of(context).size.height * .05),
// //         MaterialButton(
// //           onPressed: () {},
// //           color: Colors.amber,
// //           //  splashColor: Colors.white,
// //           padding: EdgeInsets.symmetric(
// //             horizontal: MediaQuery.of(context).size.width * .18,
// //           ),
// //           shape: RoundedRectangleBorder(
// //             borderRadius: BorderRadius.circular(40),
// //           ),
// //           child: Row(
// //             mainAxisSize: MainAxisSize.min,
// //             children: [
// //               const Text(
// //                 'Check Out',
// //                 style: TextStyle(
// //                     fontWeight: FontWeight.bold,
// //                     fontFamily: 'Nunito',
// //                     fontSize: 25),
// //               ),
// //               const SizedBox(
// //                 width: 10,
// //               ),
// //               Container(
// //                 height: 50,
// //                 padding: const EdgeInsets.all(10),
// //                 width: 60,
// //                 decoration: const BoxDecoration(
// //                   shape: BoxShape.circle,
// //                   color: primaryColor,
// //                 ),
// //                 child: SvgPicture.asset(
// //                   'assets/icons/bag.svg',
// //                   color: Colors.black,
// //                 ),
// //               ),
// //             ],
// //           ),
// //         )
// //       ],
// //     );
// //   }
// // }



// // lib/pages/detail_page/widgets/container_change_price.dart
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:food_app_animations/controller/providers.dart';

// class ContainerChangePrice extends ConsumerWidget {
//   final String title, description;
//   final List<String> prices;

//   const ContainerChangePrice({
//     Key? key,
//     required this.title,
//     required this.description,
//     required this.prices,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final priceNotifier = ref.read(priceProvider.notifier);

//     return Column(
//       children: [
//         Text(
//           title,
//           style: const TextStyle(
//               color: Colors.white,
//               fontSize: 30,
//               fontWeight: FontWeight.w700,
//               fontFamily: 'Nunito'),
//         ),
//         const SizedBox(height: 10),
//         Text(
//           description,
//           style: const TextStyle(
//               color: Colors.white,
//               fontSize: 20,
//               fontWeight: FontWeight.w400,
//               fontFamily: 'Nunito'),
//         ),
//         const SizedBox(height: 10),
//         SizedBox(
//           height: 90,
//           child: ListView.builder(
//             shrinkWrap: true,
//             itemCount: prices.length,
//             scrollDirection: Axis.horizontal,
//             itemBuilder: (context, index) {
//               return GestureDetector(
//                 onTap: () {
//                   priceNotifier.updatePrice(prices[index], index + 1);
//                 },
//                 child: AnimatedContainer(
//                   duration: const Duration(milliseconds: 200),
//                   alignment: Alignment.center,
//                   margin: const EdgeInsets.all(15),
//                   width: 90,
//                   decoration: BoxDecoration(
//                     color: index == 0 ? Colors.amber : Colors.grey,
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   child: Text(
//                     ['S', 'M', 'L'][index],
//                     style: const TextStyle(
//                         fontSize: 25, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_app_animations/controller/providers.dart';

class ContainerChangePrice extends ConsumerWidget {
  final String title, description;
  final List<String> prices;

  const ContainerChangePrice({
    super.key,
    required this.title,
    required this.description,
    required this.prices,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedPrice = ref.watch(priceProvider).price;
    final priceNotifier = ref.read(priceProvider.notifier);
    List siseList=['S', 'M', 'L'];

    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w700,
              fontFamily: 'Nunito'),
        ),
        const SizedBox(height: 10),
        Text(
          description,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w400,
              fontFamily: 'Nunito'),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 90,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: prices.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  priceNotifier.updatePrice(prices[index], index + 1);
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(15),
                  width: 90,
                  decoration: BoxDecoration(
                    color: selectedPrice == prices[index]
                        ? Colors.amber
                        : Colors.grey,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                   siseList [index],
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
