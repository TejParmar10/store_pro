// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:store_pro/app/view/icecream_view.dart';
import 'package:store_pro/app/view/search_view.dart';
import 'package:store_pro/app/view/shopping_cart_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CartView(),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
              icon: Icon(Ionicons.ice_cream_outline), label: 'Icecream'),
          NavigationDestination(
              icon: Icon(Ionicons.search_outline), label: 'Search'),
          NavigationDestination(
              icon: Icon(Ionicons.cart_outline), label: 'Cart'),
        ],
      ),
    );
  }
}
