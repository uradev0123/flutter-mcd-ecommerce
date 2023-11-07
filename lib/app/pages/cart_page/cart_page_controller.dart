import 'package:flutter_mcd_ecommerce/app/mock_data/model/product.dart';
import 'package:get/get.dart';

class CartPageController extends GetxController {
  RxList<String> selectedProductIds = <String>[].obs;

  void addToSelectedProducts(String productId) {
    selectedProductIds.add(productId);
  }

  void removeFromSelectedProducts(String productId) {
    selectedProductIds.remove(productId);
  }

  bool isProductSelected(String productId) {
    return selectedProductIds.contains(productId);
  }

  void incrementProductQuantity(Product product) {
    product.quantity++;
  }

  void decrementProductQuantity(Product product) {
    if (product.quantity > 0) {
      product.quantity--;
      if (product.quantity == 0) {
        removeFromSelectedProducts(product.id as String);
      }
    }
  }
}
