import 'package:flutter_mcd_ecommerce/app/mock_data/controller/all_menu.dart';
import 'package:flutter_mcd_ecommerce/app/mock_data/model/product.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CartPageController extends GetxController {
  final AllMenuController allMenuController = Get.put(AllMenuController());
  RxList<String> selectedProductIds = <String>[].obs;
  RxList<Product> selectedProducts = <Product>[].obs;
  RxDouble subTotalPrice = 0.0.obs;
  RxDouble totalPrice = 0.0.obs;
  RxString formattedSubTotalPrice = ''.obs;
  RxString formattedTotalPrice = ''.obs;

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
    product.quantity.value++;
  }

  void decrementProductQuantity(Product product) {
    if (product.quantity > 0) {
      product.quantity.value--;
      if (product.quantity.value == 0) {
        removeFromSelectedProducts(product.id);
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

  String formatPrice(double price) {
    var formattedPrice = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ').format(price);
    return formattedPrice.replaceAll(",00", "");
  }

  void calculateSubTotalPrice() {
    double total = 0.0;
    for (Product product in selectedProducts) {
      total += (product.price * product.quantity.value);
    }
    subTotalPrice.value = total;
    formattedSubTotalPrice.value = formatPrice(subTotalPrice.value);
  }

  void calculateTotalPrice() {
    double ongkir = 16000;
    totalPrice.value = subTotalPrice.value + ongkir;
    formattedTotalPrice.value = formatPrice(totalPrice.value);
  }
}
