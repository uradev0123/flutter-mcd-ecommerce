import 'package:flutter_mcd_ecommerce/app/mock_data/controller/all_menu.dart';
import 'package:flutter_mcd_ecommerce/app/mock_data/model/product.dart';
import 'package:get/get.dart';

class CartPageController extends GetxController {
  final AllMenuController allMenuController = Get.put(AllMenuController());
  RxList<String> selectedProductIds = <String>[].obs;
  RxList<Product> selectedProducts = <Product>[].obs;

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

  void findAndAddSelectedProducts() {
    selectedProducts.clear();
    for (String productId in selectedProductIds) {
      Product? product = allMenuController.allMenu.firstWhere(
            (element) => element.id == productId,
      );
      if (product.id.isNotEmpty) {
        selectedProducts.add(product);
      }
    }
  }
}
