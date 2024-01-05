import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:store_pro/product_store/models/app_state_model.dart';
import 'package:store_pro/product_store/models/icecream.dart';
import 'package:provider/provider.dart';
import 'package:store_pro/themes/styles.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.product,
    required this.qty,
  });
  final Icecreams product;
  final int qty;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: CachedNetworkImageProvider(product.image!),
        ),
        title: Text(
          product.flavor!,
          style: Styles.productRowitemname,
        ),
        subtitle: Text(
          '${qty > 1 ? '$qty x' : ''}₹${product.price}',
          style: Styles.productRowitemprice,
        ),
        trailing: Text(
          '₹ ${(product.price! * qty).toStringAsFixed(2)}',
          style: Styles.productRowitemname,
        ),
      ),
    );
  }
}
