class Product {
  String? picture, name, price, discount, description, terjual, penjelasan;
  Product({
    required this.picture,
    required this.name,
    required this.price,
    required this.discount,
    this.description,
    this.terjual,
    this.penjelasan,
  });
}

List<Product> listProduct = <Product>[
  Product(
      picture: "assets/img/jkt.jpg",
      name: "Setlist Tim J",
      price: "Rp.100000",
      discount: "90%",
      description: "Rp.20000",
      terjual: "1rb terjual",
      penjelasan:
          "Tim J adalah salah satu dari beberapa tim dalam grup idol JKT48. Setiap tim dalam JKT48 memiliki sekelompok anggota yang biasanya tampil bersama dalam berbagai pertunjukan dan kegiatan grup. Tim J adalah salah satu dari beberapa tim di JKT48, dan anggotanya terdiri dari para anggota JKT48 yang tergabung dalam tim ini. Tim J biasanya memiliki jadwal pertunjukan sendiri yang berbeda dari tim-tim lainnya."),
  Product(
      picture: "assets/img/jkt1.jpg",
      name: "Everyday Kachuusa CD",
      price: "Rp.40300",
      discount: "10%",
      description: "Rp.50000",
      terjual: "1rb terjual",
      penjelasan:
          "Everyday, Kachuusha is a JKT48 single, a combination of two previous singles. Produced and distributed by Hits Records and JKT48 Project, it features a special member single for 48Group."),
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
