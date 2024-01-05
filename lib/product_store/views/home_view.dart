// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:store_pro/app/view/icecream_view.dart';
import 'package:store_pro/app/view/search_view.dart';
import 'package:store_pro/app/view/shopping_cart_view.dart';
import 'package:provider/provider.dart';
import 'package:store_pro/product_store/models/app_state_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<AppStateModel>(context, listen: true);
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: model.currentIndex,
          children: const [
            IceCreamView(),
            SearchView(),
            CartView(),
            Center(
              child: Text("Search"),
            ),
            Center(
              child: Text("Cart"),
            )
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: model.currentIndex,
        onDestinationSelected: model.changeIndex,
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
