import 'package:flutter_mcd_ecommerce/app/mock_data/controller/all_menu.dart';
import 'package:flutter_mcd_ecommerce/app/mock_data/model/product.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CartPageController extends GetxController {
  final AllMenuController allMenuController = Get.put(AllMenuController());
  RxList<Product> selectedProducts = <Product>[].obs;
  RxDouble subTotalPrice = 0.0.obs;
  RxDouble totalPrice = 0.0.obs;
  RxString formattedSubTotalPrice = ''.obs;
  RxString formattedTotalPrice = ''.obs;
  RxBool isSelectedProductEmpty = false.obs;

  void checkIsProductEmpty() {
    isSelectedProductEmpty.value = selectedProducts.isEmpty;
  }

  void addToSelectedProducts(Product product) {
    selectedProducts.add(product);
  }

  void removeFromSelectedProducts(Product product) {
    selectedProducts.remove(product);
  }

  bool isProductSelected(Product product) {
    return selectedProducts.contains(product);
  }

  void incrementProductQuantity(Product product) {
    product.quantity.value++;
  }

  void decrementProductQuantity(Product product) {
    if (product.quantity > 0) {
      product.quantity.value--;
      if (product.quantity.value == 0) {
        removeFromSelectedProducts(product);
        checkIsProductEmpty();
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

  void clearSelectedProducts() {
    selectedProducts.clear();
    for (Product product in allMenuController.allMenu) {
      product.quantity.value = 0;
    }
    checkIsProductEmpty();
  }
}
