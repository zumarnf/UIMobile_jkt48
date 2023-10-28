import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prak_layout/p4/data4.dart';

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
            onPressed: () {
              // Tambahkan logika berbagi di sini
            },
          ),
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 300,
              child: Image.asset(product.picture!),
            )
          ],
        ),
      )),
    );
  }
}
