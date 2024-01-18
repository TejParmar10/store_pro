// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:store_pro/product_store/models/app_state_model.dart';
import 'package:provider/provider.dart';
import 'package:store_pro/product_store/models/product.dart';
import 'package:store_pro/product_store/widgets/product_item.dart';
import 'package:velocity_x/velocity_x.dart';

class IceCreamView extends StatelessWidget {
  const IceCreamView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icecream'),
        actions: [
          VxDarkModeButton(
            showSingleIcon: true,
          ).p12()
        ],
      ),
      body: Consumer<AppStateModel>(builder: (context, value, child) {
        final products = value.getProducts;
        return ListView.builder(
          itemBuilder: (context, index) {
            return ProductItem(
              icecream: products[index],
            );
          },
          itemCount: products.length,
        );
      }),
    );
  }
}
