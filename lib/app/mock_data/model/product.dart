class Product {
  late String id;
  late String image;
  late String name;
  late double price;
  late double many;

  Product(String id, String image, String name, double price, {double many = 0}){
    this.id = id;
    this.image = "assets/images/$image.png";
    this.name = name;
    this.price = price;
    this.many = many;
  }
}