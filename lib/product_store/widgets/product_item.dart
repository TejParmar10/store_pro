import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import
import 'package:flutter/widgets.dart';
import 'package:store_pro/product_store/models/app_state_model.dart';
import 'package:store_pro/product_store/models/icecream.dart';
import 'package:store_pro/themes/styles.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.icecream});
  final Icecreams icecream;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: CachedNetworkImageProvider(icecream.image!),
      ),
      title: Text(
        icecream.flavor!,
        style: Styles.productRowitemname,
      ),
      subtitle: Text(
        '₹ ${icecream.price!}',
        style: Styles.productRowitemprice,
      ),
      trailing: IconButton(
        icon: Icon(Icons.add_shopping_cart),
        onPressed: () {
          Provider.of<AppStateModel>(context, listen: false)
              .addProductsInCart(icecream.id!);
        },
      ),
    );
  }
}
