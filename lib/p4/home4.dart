import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prak_layout/p4/merchandise.dart';

class home4 extends StatelessWidget {
  const home4({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://jkt48.com/images/ofc/background.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 25),
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color.fromRGBO(255, 255, 255, 0.969),
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 0.969),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'News',
                        style: GoogleFonts.poppins(
                          color: Color.fromRGBO(210, 43, 82, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                        ),
                      ),
                    ),
                  ),
                  Divider(),
                  SizedBox(height: 10),
                  // Tambahkan ListView atau daftar di sini
                  ListTile(
                    title: Center(
                      child: Text(
                        'Pengumuman Graduation Gracia',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: Color.fromRGBO(61, 12, 17, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    subtitle: Center(
                        child: Text(
                      '10 Desember 2023',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                      ),
                    )),
                    tileColor: Color.fromARGB(255, 255, 255, 255),
                  ),
                  Divider(),
                  ListTile(
                    title: Center(
                      child: Text(
                        'Perilisan Single Original',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: Color.fromRGBO(61, 12, 17, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    subtitle: Center(
                        child: Text(
                      '29 November 2023',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                      ),
                    )),
                    tileColor: Color.fromARGB(255, 255, 255, 255),
                  ),
                  Divider(),
                  ListTile(
                    title: Center(
                      child: Text(
                        'Pembaruan Membership Official Fan',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: Color.fromRGBO(61, 12, 17, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    subtitle: Center(
                        child: Text(
                      '10 November 2023',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                      ),
                    )),
                    tileColor: Color.fromARGB(255, 255, 255, 255),
                  ),
                  Divider(),
                  // Tambahkan item-item ListView dengan latar belakang putih
                ],
              ),
            ),
            SizedBox(height: 25),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Single Original',
                  style: GoogleFonts.poppins(
                    color: Color.fromRGBO(210, 43, 82, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: CardWithImage(
                    image:
                        'https://upload.wikimedia.org/wikipedia/id/3/34/JKT48_Sayonara_Crawl_Cover.jpg',
                    text: 'Sayonara Crawl',
                  ),
                ),
                Expanded(
                  child: CardWithImage(
                    image:
                        'https://upload.wikimedia.org/wikipedia/id/3/32/Flying_High.png',
                    text: 'Flying High',
                  ),
                ),
                Expanded(
                  child: CardWithImage(
                    image:
                        'https://upload.wikimedia.org/wikipedia/id/2/25/JKT48_-_Rapsodi.jpg',
                    text: 'Rapsodi',
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Merchandise();
                  },
                ));
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
                'Merchandise',
                style: GoogleFonts.poppins(
                  color: Color.fromARGB(255, 255, 255, 255), // Warna teks
                ),
              ),
            ),
            SizedBox(height: 45),
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
                                  color: const Color.fromRGBO(247, 140, 162, 1),
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
                                  color: const Color.fromRGBO(247, 140, 162, 1),
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
                                  color: const Color.fromRGBO(247, 140, 162, 1),
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
                            minimumSize:
                                MaterialStateProperty.all<Size>(Size(150, 50)),
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
            SizedBox(
              height: 35,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Next Birthday',
                  style: GoogleFonts.poppins(
                    color: Color.fromRGBO(210, 43, 82, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceEvenly, // Untuk mengatur jarak yang sama antara card
              children: [
                Expanded(
                  child: BirthdayCard(
                    image:
                        'https://jkt48.com/profile/angelina_christy.jpg?v=20230116',
                    title: 'Angelina Christy',
                    subtitle: '5 Desember 2005',
                  ),
                ),
                Expanded(
                  child: BirthdayCard(
                    image:
                        'https://jkt48.com/profile/flora_shafiq.jpg?v=20230116',
                    title: 'Flora Shafiq',
                    subtitle: '25 Desember 2004',
                  ),
                ),
                Expanded(
                  child: BirthdayCard(
                    image:
                        'https://jkt48.com/profile/fiony_alveria.jpg?v=20230116',
                    title: 'Fiony Alveria',
                    subtitle: '2 Januari 2002',
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class IconProperty extends StatelessWidget {
  final IconData icon;
  final String? text1, text2;
  const IconProperty({
    Key? key,
    required this.icon,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        SizedBox(
          height: 13,
        ),
        Text(
          text1.toString(),
          style: GoogleFonts.poppins(color: Colors.white),
        ),
        SizedBox(
          height: 13,
        ),
        Text(
          text2.toString(),
          style: GoogleFonts.poppins(color: Colors.white),
        ),
      ],
    );
  }
}

class CardWithImage extends StatelessWidget {
  final String image;
  final String text;
  final double cardWidth;
  final double cardHeight;

  CardWithImage({
    required this.image,
    required this.text,
    this.cardWidth = 150.0,
    this.cardHeight = 160.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardWidth,
      height: cardHeight,
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(
              color: const Color.fromRGBO(247, 140, 162, 1), width: 2),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 80, // Tinggi gambar
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(image),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15), // Border radius pada gambar
                    topRight: Radius.circular(15),
                  )),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              child: Center(
                child: Text(
                  text,
                  style: GoogleFonts.poppins(
                    fontSize: 10.5,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BirthdayCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final double birthdayWidth;
  final double birthdayHeight;

  BirthdayCard(
      {required this.image,
      required this.title,
      required this.subtitle,
      this.birthdayHeight = 190,
      this.birthdayWidth = 190});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: birthdayWidth,
      height: birthdayHeight,
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(
              color: const Color.fromRGBO(247, 140, 162, 1), width: 2),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(image),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15), // Border radius pada gambar
                    topRight: Radius.circular(15),
                  )),
            ),
            SizedBox(height: 10), // Jarak antara gambar dan teks
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              subtitle,
              style: GoogleFonts.poppins(
                fontSize: 8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
