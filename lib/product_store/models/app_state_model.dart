import 'package:flutter/foundation.dart';
import 'package:store_pro/product_store/data/product_repo.dart';
import 'package:store_pro/product_store/models/icecream.dart';
import 'package:store_pro/product_store/models/product.dart';

double _salesTaxRate = 0.18;
double _shippingCost = 10;

class AppStateModel extends ChangeNotifier {
  List<Icecreams> _availableProducts =
      []; //here icecreams is basically the products
  final _productsInCart = <int, int>{};
  Map<int, int> get productsInCart {
    return Map.from(_productsInCart);
  }

  List<Product> get availableProducts {
    return List.from(_availableProducts);
  }

  List<Icecreams> get getProducts {
    return _availableProducts;
  }

  int get totalCartQuantity {
    return _productsInCart.values.fold(0, (sum, val) => sum + val);
  }

  double get subTotalCost {
    return _productsInCart.keys
        .map((id) => _availableProducts[id].price! * _productsInCart[id]!)
        .fold(0, (sum, value) => sum + value);
  }

  double get shippingCostItem {
    return _shippingCost *
        _productsInCart.values.fold(0, (sum, value) => sum + value);
  }

  double get taxCost {
    return subTotalCost + _shippingCost + taxCost;
  }

  void addProductsInCart(int productid) {
    if (!productsInCart.containsKey(productid)) {
      _productsInCart[productid] = 1;
    } else {
      _productsInCart[productid] = _productsInCart[productid]! + 1;
    }
    notifyListeners();
  }

  void removeProductsInCart(int productid) {
    if (!productsInCart.containsKey(productid)) {
      if (_productsInCart[productid] == 1) {
        _productsInCart.remove(productid);
      }
    } else {
      _productsInCart[productid] = _productsInCart[productid]! - 1;
    }
    notifyListeners();
  }

  void clearCart() {
    _productsInCart.clear();
    notifyListeners();
  }

  List<Icecreams> search(String query) {
    return _availableProducts
        .where(
          (Product) =>
              Product.flavor!.toLowerCase().contains(query.toLowerCase()),
        )
        .toList();
  }

  loadProducts() async {
    _availableProducts = await ProductRepo.loadIceCreams();
    notifyListeners();
  }
}
