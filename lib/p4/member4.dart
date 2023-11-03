import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class member4 extends StatelessWidget {
  const member4({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                  color: Color.fromRGBO(247, 140, 162, 9),
                ),
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              margin: EdgeInsets.only(
                                  left: 50.0), // Tambahkan margin kiri di sini
                              child: Text(
                                "Member",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10.0),
                          child: IconButton(
                            icon: Icon(Icons.search, color: Colors.white),
                            onPressed: () {
                              // Tambahkan logika pencarian di sini
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromRGBO(247, 140, 162, 9), // Warna border
                    width: 2.0, // Lebar border
                  ),
                ),
                padding: const EdgeInsets.all(
                    10.0), // Padding untuk memberi jarak dari tepi
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:
                      List.generate((screenWidth > 620) ? 3 : 4, (rowIndex) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate((screenWidth > 620) ? 4 : 3,
                          (colIndex) {
                        final imageIndex =
                            rowIndex * ((screenWidth > 620) ? 4 : 3) + colIndex;
                        if (imageIndex < imageUrls.length) {
                          return Container(
                            width: 75,
                            height: 105,
                            margin: const EdgeInsets.all(4.0),
                            color: Color.fromRGBO(255, 255, 255, 1),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 60, // Lebar gambar
                                  height: 60, // Tinggi gambar
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        imageUrls[
                                            imageIndex], // Gunakan URL gambar sesuai indeks
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  nama[imageIndex],
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          );
                        } else {
                          return Container(); // Untuk menghindari error jika URL gambar kurang
                        }
                      }),
                    );
                  }),
                ),
              ),
              SizedBox(
                height: 20,
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
                      borderRadius: BorderRadius.circular(10.0), // Radius sudut
                    ),
                  ),
                ),
                child: Text(
                  'Alamat Fan Letter',
                  style: GoogleFonts.poppins(
                    color: Color.fromARGB(255, 255, 255, 255), // Warna teks
                  ),
                ),
              ),
              SizedBox(
                height: 30,
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
                          'Jadwal Event',
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
                      height: 290, // Atur tinggi ListView sesuai kebutuhan
                      child: ListView(
                        children: <Widget>[
                          ListTile(
                            title: Center(
                              child: Text(
                                'Pestapora',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                    color:
                                        const Color.fromRGBO(247, 140, 162, 1),
                                    fontWeight: FontWeight
                                        .bold), // Atur teks menjadi di tengah
                              ),
                            ),
                            subtitle: Center(child: Text('12 Desember 2023')),
                            tileColor: Colors.white, // Latar belakang putih
                          ),
                          Divider(),
                          ListTile(
                            title: Center(
                              child: Text(
                                'Aniversary Concert',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                    color:
                                        const Color.fromRGBO(247, 140, 162, 1),
                                    fontWeight: FontWeight
                                        .bold), // Atur teks menjadi di tengah
                              ),
                            ),
                            subtitle: Center(child: Text('17 Desember 2023')),
                            tileColor: Colors.white, // Latar belakang putih
                          ),
                          Divider(),
                          ListTile(
                            title: Center(
                              child: Text(
                                'RCTI Awards',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                    color:
                                        const Color.fromRGBO(247, 140, 162, 1),
                                    fontWeight: FontWeight
                                        .bold), // Atur teks menjadi di tengah
                              ),
                            ),
                            subtitle: Center(child: Text('10 Januari 2024')),
                            tileColor: Colors.white, // Latar belakang putih
                          ),
                          SizedBox(
                              height:
                                  20), // Menambahkan jarak sebelum kotak di bawahnya
                          TextButton(
                            onPressed: () {
                              // Tindakan yang ingin Anda lakukan ketika tombol ditekan
                            },
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all<Size>(
                                  Size(150, 50)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color.fromRGBO(
                                      210, 43, 82, 1)), // Warna latar belakang
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      15.0), // Radius sudut kotak
                                ),
                              ),
                            ),
                            child: Text(
                              'Lihat selengkapnya >>',
                              style: GoogleFonts.poppins(
                                color: Color.fromRGBO(
                                    255, 255, 255, 1), // Warna teks
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
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
      ),
    );
  }
}

final List<String> imageUrls = [
  'https://jkt48.com/profile/adzana_shaliha.jpg?v=20230116',
  'https://jkt48.com/profile/angelina_christy.jpg?v=20230116',
  'https://jkt48.com/profile/feni_fitriyanti.jpg?v=20230116',
  'https://jkt48.com/profile/flora_shafiq.jpg?v=20230116',
  'https://jkt48.com/profile/amanda_sukma.jpg?v=20230530',
  'https://jkt48.com/profile/indira_seruni.jpg?v=20230531',
  'https://jkt48.com/profile/fiony_alveria.jpg?v=20230116',
  'https://jkt48.com/profile/freya_jayawardana.jpg?v=20230116',
  'https://jkt48.com/profile/raisha_syifa.jpg?v=20230530',
  'https://jkt48.com/profile/yessica_tamara.jpg?v=20230116',
  'https://jkt48.com/profile/gita_sekar_andarini.jpg?v=20230116',
  'https://jkt48.com/profile/shani_indira_natio.jpg?v=20230116'
];

final List<String> nama = [
  'Ashel',
  'Christy',
  'Feni',
  'Flora',
  'Amanda',
  'Indira',
  'Fiony',
  'Freya',
  'Raisha',
  'Yessica',
  'Gita',
  'Shani',
];
