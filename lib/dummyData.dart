import 'package:flutter/material.dart';

class Product {
  static int currentID = 0;
  String image;
  String productName;
  int productId = currentID;
  String description;
  double price;
  bool fav = false;
  Product(
      {required this.image,
      required this.productName,
      required this.description,
      required this.price}) {
    currentID = currentID + 1;
  }
}

class DummyData {
  List<Product> product = [
    Product(
        image: "assets/0.jpg",
        productName: "Groowii High Neck Pullover Top For Unisex",
        description:
            "Is Adult Product : No Top Style : Pullover Tops Neck Style : High Neck Fabric Type : Wool Sleeve Length : Full Sleeve Material Composition : 100% Wool Targeted Group : Unisex Brand : Groowii",
        price: 150.00),
    Product(
        image: "assets/1.jpg",
        productName: "Clear Magnetic Case Designed for iPhone 13 Pro Max",
        description:
            "[15X Stronger Magnetic Adsorption & Support The Newest Magsafe Charger And Wallet] iPhone 13 Pro Max clear magsafe case has built-in 36 quadrupole magnets and the magsafe charger is automatically calibrated, the magnetic attraction force is increased by 15 times, and it can be quickly charged by 360-degree rotating magnetic. When using magsafe to charge the iPhone 13 Pro Max , there is no need to remove the clear magsafe case and will not interfere with the signal at all.",
        price: 100.00),
    Product(
        image: "assets/2.jpg",
        productName: 'Manager Medical Office Chair - Black Mesh',
        description: 'Product dimensions	47D x 47W x 90H centimeters',
        price: 751.90),
    Product(
        image: "assets/3.jpg",
        productName: 'SKMEI 1025 Black Waterproof Mens Digital Watch',
        description: 'Case Wide: 50mmCase thickness: 14mm Band wide: 22mm',
        price: 270.00),
  ];
}
