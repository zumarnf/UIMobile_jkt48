import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prak_layout/p4/data4.dart';
import 'dart:ui';

class Detailpertemuan5 extends StatelessWidget {
  const Detailpertemuan5(
      {super.key, required this.title, required this.product});
  final String? title;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(216, 0, 50, 1),
        title: Text(
          product.name.toString(),
          style:
              GoogleFonts.pacifico(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "assets/img/background.jpg",
              width: double.infinity,
              height: 280,
              fit: BoxFit.cover,
            ),
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 6,
                  sigmaY: 6,
                ),
                child: Container(
                  color: Colors.black.withOpacity(0),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 220,
              child: Image.asset(product.picture!),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white, // Warna latar belakang kotak
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                border: Border.all(
                  color: const Color.fromRGBO(210, 43, 82, 1), // Warna border
                  width: 2.0, // Lebar border
                ),
              ),
              width: double.infinity, // Mengatur lebar menjadi full width
              margin: EdgeInsets.only(top: 220),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 18,
                              left: 30,
                            ), // Padding untuk jarak dari sisi kiri dan atas
                            child: Text(
                              product.name!,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10,
                              left: 30,
                            ), // Padding untuk jarak dari sisi kiri dan atas
                            child: Text(
                              product.price!,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 7,
                                  left: 30,
                                  right: 10,
                                ), // Padding untuk jarak dari sisi kiri dan atas
                                child: Text(
                                  product.description!,
                                  style: TextStyle(
                                    fontSize: 16,
                                    decoration: TextDecoration.lineThrough,
                                    color: const Color.fromARGB(
                                        255, 156, 153, 153),
                                  ),
                                ),
                              ),
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(230, 208, 212, 1),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    product.discount!,
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 237, 0, 0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 7,
                              left: 30,
                            ), // Padding untuk jarak dari sisi kiri dan atas
                            child: Text(
                              "Deskripsi: ",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 7,
                              left: 30,
                              right: 30,
                            ), // Padding untuk jarak dari sisi kiri dan atas
                            child: Text(
                              product.penjelasan!,
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(height: 11),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10), // Margin kanan dan kiri
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              // Aksi yang ingin Anda eksekusi ketika tombol pertama ditekan
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            child: Text(
                              "Tombol Pertama",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10, // Spasi antara kedua TextButton
                        ),
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              // Aksi yang ingin Anda eksekusi ketika tombol kedua ditekan
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            child: Text(
                              "Tombol Kedua",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
