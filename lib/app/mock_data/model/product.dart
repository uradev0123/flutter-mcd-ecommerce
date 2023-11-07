import 'package:get/get.dart';

class Product {
  late String id;
  late String image;
  late String name;
  late double price;
  RxInt quantity = 0.obs;

  Product(String id, String image, String name, double price, {int quantity = 0}){
    this.id = id;
    this.image = "assets/images/$image.png";
    this.name = name;
    this.price = price;
    this.quantity.value = quantity;
  }
}