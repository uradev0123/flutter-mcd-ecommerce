import 'package:get/get.dart';

class Product {
  late String id;
  late String image;
  late String name;
  late double price;
  RxDouble quantity = 0.0.obs;

  Product(String id, String image, String name, double price, {double quantity = 0}){
    this.id = id;
    this.image = "assets/images/$image.png";
    this.name = name;
    this.price = price;
    this.quantity.value = quantity;
  }
}