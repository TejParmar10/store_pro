import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:store_pro/product_store/models/icecream.dart';

class ProductRepo {
  static Future<List<Icecreams>> loadIceCreams() async {
    String res = await rootBundle.loadString('assets/icecream.json');

    final iceCreamData =
        IceCreamData.fromJson(jsonDecode(res) as Map<String, dynamic>);
    return iceCreamData.icecreams!;
  }
}
// // Example of loading the asset
// String iceCreamData = await rootBundle.loadString('assets/icecream.json');
