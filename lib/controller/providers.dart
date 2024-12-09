// lib/providers/price_provider.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_app_animations/pages/detail_page/widgets/my_widget.dart';

class PriceNotifier extends StateNotifier<MyWidget> {
  PriceNotifier() : super(const MyWidget(price: '1',));

  void updatePrice(String price, int keyIndex) {
    state = MyWidget(price: price, key: ValueKey(keyIndex));
  }
}

final priceProvider = StateNotifierProvider<PriceNotifier, MyWidget>((ref) {
  return PriceNotifier();
});
