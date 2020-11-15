import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int id, price;
  final String size;
  final Color color;
  final String arUrl;

  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
    this.arUrl,
  });

  String getArUrl() {
    return arUrl;
  }
}

List<Product> products = [
  Product(
      id: 1,
      title: "EchoAR Sofa",
      price: 903,
      size: "1.2 X 1.2 X 5",
      description: "Blue sofa for EchoAR",
      image: "assets/images/1.png",
      color: Color(0xFF3D82AE),
      arUrl: "https://go.echoar.xyz/ykvh"),
  Product(
      id: 2,
      title: "Samasource Sofa",
      price: 903,
      size: "1.2 X 1.2 X 5",
      description: "Comfortable white sofa for Samasource's employees",
      image: "assets/images/2.png",
      color: Color(0xFF989493),
      arUrl: "https://go.echoar.xyz/5xrY"),
  Product(
      id: 3,
      title: "Mcgill Table",
      price: 203,
      size: "1.2 X 1.2 X 5",
      description: "Table for Mcgill students",
      image: "assets/images/3.png",
      color: Color(0xFFE6B398),
      arUrl: "https://go.echoar.xyz/8zny"),
  Product(
    id: 4,
    title: "MLH bed",
    price: 199,
    size: "1.2 X 1.2 X 5",
    description: "Highest quality bed for the hackers",
    image: "assets/images/4.png",
    color: Color(0xFF3D82AE),
    arUrl: "https://go.echoar.xyz/ykvh",
  )
];

String dummyText =
    "ShopAR is presented by the Players group to facilitate online furniture shopping for every individual going through the pandemic. Idea here is to allow the customers to have a realistic preview of what they are planning to buy. "
    "With a better preview they can have a better idea of what they want. Simple and efficient from the comfort and safety of your home.  ";
