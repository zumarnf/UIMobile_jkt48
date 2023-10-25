import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class profile4 extends StatelessWidget {
  const profile4({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              color: Color.fromRGBO(
                  247, 140, 162, 9), // Warna latar belakang merah muda
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Center(
                child: Text(
                  "Profil",
                  style: GoogleFonts.poppins(
                      color: Colors.white, // Warna teks putih
                      fontWeight: FontWeight.bold,
                      fontSize: 28),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromRGBO(247, 140, 162, 1), // Warna border
                  width: 2.0, // Ketebalan border
                ),
                borderRadius: BorderRadius.circular(5.0), // Sudut border
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                    5.0), // Sesuaikan dengan sudut border Container
                child: Image.network(
                  'https://image.popbela.com/content-images/post/20221021/9dc40ae2d58fbe302c5542b8de2cd283.jpg?width=750&format=webp&w=750',
                  fit: BoxFit
                      .cover, // Agar gambar sesuai dan dicrop sesuai dengan kotak
                  height: 200,
                  width: 150,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "Mamang Seok Ubaidi",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Center(
                  child: Text(
                'Nama',
                style: GoogleFonts.poppins(),
              )),
              subtitle: Center(
                  child: Text('Mamang Seok', style: GoogleFonts.poppins())),
            ),
            Divider(),
            ListTile(
              title: Center(
                  child: Text('Tanggal Lahir', style: GoogleFonts.poppins())),
              subtitle: Center(
                  child:
                      Text('10 Desember 1992', style: GoogleFonts.poppins())),
            ),
            Divider(),
            ListTile(
              title:
                  Center(child: Text('Horoskop', style: GoogleFonts.poppins())),
              subtitle: Center(
                  child: Text('Sagittarius', style: GoogleFonts.poppins())),
            ),
            Divider(),
            ListTile(
              title: Center(
                  child: Text('Nama Panggilan', style: GoogleFonts.poppins())),
              subtitle:
                  Center(child: Text('Mang', style: GoogleFonts.poppins())),
            ),
            Divider(),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    // Fungsi yang akan dijalankan saat tombol ditekan
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all<Size>(
                        Size(150, 50)), // Atur tinggi dan lebar di sini
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromRGBO(
                            210, 43, 82, 1)), // Warna latar belakang
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10.0), // Radius sudut
                      ),
                    ),
                  ),
                  child: Text(
                    'Membership',
                    style: GoogleFonts.poppins(
                      color: Color.fromARGB(255, 255, 255, 255), // Warna teks
                      // Menggunakan Google Fonts
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Fungsi yang akan dijalankan saat tombol ditekan
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all<Size>(
                        Size(150, 50)), // Atur tinggi dan lebar di sini
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromRGBO(
                            210, 43, 82, 1)), // Warna latar belakang
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10.0), // Radius sudut
                      ),
                    ),
                  ),
                  child: Text(
                    'Setting',
                    style: GoogleFonts.poppins(
                      color: Color.fromARGB(255, 255, 255, 255), // Warna teks
                      // Menggunakan Google Fonts
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 45,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromRGBO(247, 140, 162, 1), // Warna border
                  width: 2.0, // Ketebalan border
                ),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(247, 140, 162, 9),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                            15.0), // Atur radius sudut atas kiri
                        topRight: Radius.circular(15.0),
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Verifikasi Teather',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Divider(),
                  SizedBox(height: 10),
                  Container(
                    height: 250, // Atur tinggi ListView sesuai kebutuhan
                    child: ListView(
                      children: <Widget>[
                        ListTile(
                          title: Center(
                            child: Text(
                              'Aitakatta',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  color: const Color.fromRGBO(247, 140, 162, 1),
                                  fontWeight: FontWeight
                                      .bold), // Atur teks menjadi di tengah
                            ),
                          ),
                          subtitle: Center(
                              child: Text(
                            '12 Desember 2023',
                            style: GoogleFonts.poppins(),
                          )),
                          tileColor: Colors.white, // Latar belakang putih
                        ),
                        Divider(),
                        ListTile(
                          title: Center(
                            child: Text(
                              'Banzai!',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  color: const Color.fromRGBO(247, 140, 162, 1),
                                  fontWeight: FontWeight
                                      .bold), // Atur teks menjadi di tengah
                            ),
                          ),
                          subtitle: Center(
                              child: Text(
                            '17 Desember 2023',
                            style: GoogleFonts.poppins(),
                          )),
                          tileColor: Colors.white, // Latar belakang putih
                        ),
                        Divider(),
                        ListTile(
                          title: Center(
                            child: Text(
                              'Seishun Girls',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  color: const Color.fromRGBO(247, 140, 162, 1),
                                  fontWeight: FontWeight
                                      .bold), // Atur teks menjadi di tengah
                            ),
                          ),
                          subtitle: Center(
                              child: Text(
                            '10 Januari 2024',
                            style: GoogleFonts.poppins(),
                          )),
                          tileColor: Colors.white, // Latar belakang putih
                        ),
                        // Tambahkan item-item ListView dengan latar belakang putih
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
