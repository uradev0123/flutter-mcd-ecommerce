class Product {
  late String image;
  late String name;
  late double price;

  Product(String image, String name, double price){
    this.image = "assets/images/$image.png";
    this.name = name;
    this.price = price;
  }
}