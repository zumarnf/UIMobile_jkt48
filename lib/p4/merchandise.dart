import 'package:flutter/material.dart';
import 'package:prak_layout/p4/data4.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prak_layout/p4/detail_pertemuan5.dart';

class Merchandise extends StatefulWidget {
  const Merchandise({super.key});

  @override
  State<Merchandise> createState() => _MerchandiseState();
}

class _MerchandiseState extends State<Merchandise> {
  bool isGrid = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(216, 0, 50, 1),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search), // Ikon search
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(isGrid ? Icons.grid_on : Icons.list_alt), // Ikon grid
            onPressed: () {
              setState(() {
                isGrid = !isGrid;
              });
            },
          ),
        ],
        title: Text(
          'Merchandise',
          style:
              GoogleFonts.pacifico(fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
      body: Column(
        children: [
          // Add your three boxes here
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 5, left: 16),
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 13, vertical: 12),
                    backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                        color: Color.fromRGBO(210, 43, 82,
                            1), // Warna border sesuai yang diinginkan
                      ),
                    ),
                  ),
                  onPressed: () {
                    // Tambahkan aksi yang ingin Anda jalankan ketika tombol ditekan
                  },
                  child: Text(
                    "Penjualan Terbanyak",
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 5),
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                        color: Color.fromRGBO(210, 43, 82,
                            1), // Warna border sesuai yang diinginkan
                      ),
                    ),
                  ),
                  onPressed: () {
                    // Tambahkan aksi yang ingin Anda jalankan ketika tombol ditekan
                  },
                  child: Text(
                    "Ulasan Terbanyak",
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 5),
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                        color: Color.fromRGBO(210, 43, 82,
                            1), // Warna border sesuai yang diinginkan
                      ),
                    ),
                  ),
                  onPressed: () {
                    // Tambahkan aksi yang ingin Anda jalankan ketika tombol ditekan
                  },
                  child: Text(
                    "Terbaru",
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ),
              Container(
                height: 30,
                width: 35,
                margin: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromRGBO(210, 43, 82, 1),
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: IconButton(
                    onPressed: () {
                      // Add your button's onPressed logic here
                    },
                    icon: Icon(
                      Icons.filter_alt,
                      size: 16,
                      color:
                          Color.fromRGBO(210, 43, 82, 1), // Set the icon color
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListViewCustom(
              grid: isGrid,
            ),
          ),
        ],
      ),
    );
  }
}

class ListViewCustom extends StatelessWidget {
  const ListViewCustom({super.key, required this.grid});
  final bool grid;

  @override
  Widget build(BuildContext context) {
    if (grid) {
      return GridView.builder(
        itemCount: listProduct.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 200, crossAxisCount: 2),
        itemBuilder: (context, index) => Card(
          elevation: 5,
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Detailpertemuan5(
                      title: listProduct[index].name.toString(),
                      product: listProduct[index]),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.all(5),
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    listProduct[index].picture.toString(),
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 6,
                        ),
                        child: Text(listProduct[index].name.toString(),
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400, fontSize: 13)),
                      ),
                      SizedBox(height: 2),
                      Padding(
                        padding: EdgeInsets.only(),
                        child: Text(
                          listProduct[index].price.toString(),
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, fontSize: 13),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              right: 4.0,
                            ),
                            child: Text(
                              listProduct[index].description.toString(),
                              style: GoogleFonts.poppins(
                                  decoration: TextDecoration.lineThrough,
                                  color: Color.fromRGBO(164, 164, 164, 1),
                                  fontSize: 11),
                            ),
                          ),
                          SizedBox(height: 2),
                          Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(230, 208, 212, 1),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                listProduct[index].discount.toString(),
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11,
                                  color: Color.fromARGB(255, 237, 0, 0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: 5.0,
                            ),
                            child: Icon(
                              Icons.star,
                              color: Color.fromRGBO(236, 208, 0, 1),
                              size: 14,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: 5.0,
                            ),
                            child: Text("4.9",
                                style: GoogleFonts.poppins(
                                    color: Color.fromRGBO(164, 164, 164, 1),
                                    fontSize: 11)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: 5.0,
                              right: 4,
                              left: 4,
                            ),
                            child: Text("|",
                                style: GoogleFonts.poppins(
                                    color: Color.fromRGBO(164, 164, 164, 1),
                                    fontSize: 11)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: 5.0,
                            ),
                            child: Text(
                              listProduct[index].terjual.toString(),
                              style: GoogleFonts.poppins(
                                  color: Color.fromRGBO(164, 164, 164, 1),
                                  fontSize: 11),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    } else {
      return ListView.builder(
        itemCount: listProduct.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Detailpertemuan5(
                  title: listProduct[index].name.toString(),
                  product: listProduct[index],
                ),
              ),
            );
          },
          child: Container(
            margin: EdgeInsets.all(10),
            height: 120,
            child: Card(
              elevation: 5,
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image:
                            AssetImage(listProduct[index].picture.toString()),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: 6.0,
                          top: 6,
                        ),
                        child: Text(listProduct[index].name.toString(),
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400, fontSize: 13)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: 3.0,
                        ),
                        child: Text(
                          listProduct[index].price.toString(),
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, fontSize: 13),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              right: 4.0,
                            ),
                            child: Text(
                              listProduct[index].description.toString(),
                              style: GoogleFonts.poppins(
                                  decoration: TextDecoration.lineThrough,
                                  color: Color.fromRGBO(164, 164, 164, 1),
                                  fontSize: 11),
                            ),
                          ),
                          Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(230, 208, 212, 1),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                listProduct[index].discount.toString(),
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11,
                                  color: Color.fromARGB(255, 237, 0, 0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: 5.0,
                            ),
                            child: Icon(
                              Icons.star,
                              color: Color.fromRGBO(236, 208, 0, 1),
                              size: 14,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: 5.0,
                            ),
                            child: Text("4.9",
                                style: GoogleFonts.poppins(
                                    color: Color.fromRGBO(164, 164, 164, 1),
                                    fontSize: 11)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: 5.0,
                              right: 4,
                              left: 4,
                            ),
                            child: Text("|",
                                style: GoogleFonts.poppins(
                                    color: Color.fromRGBO(164, 164, 164, 1),
                                    fontSize: 11)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: 5.0,
                            ),
                            child: Text(
                              listProduct[index].terjual.toString(),
                              style: GoogleFonts.poppins(
                                  color: Color.fromRGBO(164, 164, 164, 1),
                                  fontSize: 11),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
}
