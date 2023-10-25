import 'package:flutter/material.dart';
import 'package:prak_layout/p4/data4.dart';
import 'package:google_fonts/google_fonts.dart';

class Merchandise extends StatefulWidget {
  const Merchandise({super.key});

  @override
  State<Merchandise> createState() => _MerchandiseState();
}

class _MerchandiseState extends State<Merchandise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(216, 0, 50, 1),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search), // Ikon search
            onPressed: () {
              
            },
          ),
          IconButton(
            icon: Icon(Icons.grid_on), // Ikon grid
            onPressed: () {
              
            },
          ),
        ],
        title: Text(
          'Merchandise',
          style:
              GoogleFonts.pacifico(fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
      body: ListViewCustom(),
    );
  }
}

class ListViewCustom extends StatelessWidget {
  const ListViewCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listProduct.length,
      itemBuilder: (context, index) => Container(
        margin: EdgeInsets.all(10),
        // Lebar container sesuai kebutuhan
        height: 100, // Tinggi container sesuai kebutuhan
        child: Card(
          elevation: 5,
          child: Row(
            children: [
              Container(
                width: 100, // Sesuaikan lebar gambar sesuai kebutuhan
                height: 100, // Sesuaikan tinggi gambar sesuai kebutuhan
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage(listProduct[index].picture.toString()),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 10), // Memberi jarak antara gambar dan teks
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    listProduct[index].name.toString(),
                  ),
                  Text(
                    listProduct[index].price.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        listProduct[index].description.toString(),
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      Text(
                        listProduct[index].discount.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
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
    );
  }
}
