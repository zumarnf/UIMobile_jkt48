class Product {
  String? picture, name, price, discount, description, terjual;
  Product({
    required this.picture,
    required this.name,
    required this.price,
    required this.discount,
    this.description,
    this.terjual,
  });
}

List<Product> listProduct = <Product>[
  Product(
      picture: "assets/img/jkt.jpg",
      name: "Setlist Tim J",
      price: "Rp.100000",
      discount: "90%",
      description: "Rp.20000",
      terjual: "1rb terjual"),
  Product(
      picture: "assets/img/jkt1.jpg",
      name: "Everyday Kachuusa CD",
      price: "Rp.40300",
      discount: "10%",
      description: "Rp.50000",
      terjual: "1rb terjual"),
  Product(
      picture: "assets/img/jkt2.jpg",
      name: "UZA CD",
      price: "Rp.43000",
      discount: "80%",
      description: "Rp.52000",
      terjual: "1rb terjual"),
  Product(
      picture: "assets/img/jkt3.jpg",
      name: "Rapsodi",
      price: "Rp.42000",
      discount: "20%",
      description: "Rp.55000",
      terjual: "1rb terjual"),
];
