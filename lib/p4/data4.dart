class Product {
  String? picture, name, price, discount, description;
  Product(
      {required this.picture,
      required this.name,
      required this.price,
      required this.discount,
      this.description});
}

List<Product> listProduct = <Product>[
  Product(
      picture: "assets/img/jkt.jpg",
      name: "Sepatu",
      price: "1000",
      discount: "90",
      description: "5000"),
  Product(
      picture: "assets/img/jkt1.jpg",
      name: "Tas",
      price: "40300",
      discount: "10",
      description: "50000"),
  Product(
      picture: "assets/img/jkt2.jpg",
      name: "Jas",
      price: "43000",
      discount: "80",
      description: "52000"),
  Product(
      picture: "assets/img/jkt3.jpg",
      name: "Sepat",
      price: "42000",
      discount: "20",
      description: "55000"),
];
