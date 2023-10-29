import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class fav4 extends StatelessWidget {
  const fav4({super.key});

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
                  "Oshi",
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
                  color: const Color.fromRGBO(247, 140, 162, 1), // Warna border
                  width: 2.0, // Ketebalan border
                ),
                borderRadius: BorderRadius.circular(5.0), // Sudut border
              ),
              child: Image.network(
                'https://jkt48.com/profile/angelina_christy.jpg?v=20230116',
                height: 200,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "Angelina Christy",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Center(child: Text('Nama', style: GoogleFonts.poppins())),
              subtitle: Center(
                  child:
                      Text('Angelina Christy', style: GoogleFonts.poppins())),
            ),
            Divider(),
            ListTile(
              title: Center(
                  child: Text('Tanggal Lahir', style: GoogleFonts.poppins())),
              subtitle: Center(
                  child: Text('5 Desember 2005', style: GoogleFonts.poppins())),
            ),
            Divider(),
            ListTile(
              title: Center(
                  child: Text('Golongan Darah', style: GoogleFonts.poppins())),
              subtitle: Center(child: Text('O', style: GoogleFonts.poppins())),
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
                  child: Text('Tinggi Badan', style: GoogleFonts.poppins())),
              subtitle:
                  Center(child: Text('163 cm', style: GoogleFonts.poppins())),
            ),
            Divider(),
            ListTile(
              title: Center(
                  child: Text('Nama Panggilan', style: GoogleFonts.poppins())),
              subtitle:
                  Center(child: Text('Christy', style: GoogleFonts.poppins())),
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
                    'Alamat Fan Letter',
                    style: GoogleFonts.poppins(
                      color: Color.fromARGB(255, 255, 255, 255), // Warna teks
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
                    'Ganti',
                    style: GoogleFonts.poppins(
                      color: Color.fromARGB(255, 255, 255, 255), // Warna teks
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color.fromRGBO(247, 140, 162, 0.9),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(
                        10.0), // Padding di atas, bawah, kiri, dan kanan
                    child: Text(
                      'JIKOSHOUKAI',
                      style: GoogleFonts.poppins(
                        color: Colors.white, // Warna teks putih
                        fontWeight: FontWeight.bold, // Teks bold
                        fontSize: 19, // Ukuran font 19
                      ),
                    ),
                  ),
                  SizedBox(
                      height:
                          15), // Jarak antara teks "JIKOSHOUKAI" dan teks selanjutnya
                  Padding(
                    padding: EdgeInsets.all(
                        10.0), // Padding di atas, bawah, kiri, dan kanan
                    child: Center(
                      child: Text(
                        '"Peduli dan baik hati... Siapakah dia? Christy..."',
                        style: GoogleFonts.poppins(
                          color: Colors.white, // Warna teks putih
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color.fromRGBO(247, 140, 162, 9),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconProperty(
                    icon: Icons.group,
                    text1: "SENBATSU",
                    text2: "9",
                  ),
                  IconProperty(
                    icon: Icons.theaters,
                    text1: "TEATER",
                    text2: "200",
                  ),
                  IconProperty(
                    icon: Icons.phonelink_ring,
                    text1: "SOCIAL MEDIA",
                    text2: "@Christyjkt48",
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromRGBO(247, 140, 162, 1), // Warna border
                  width: 2.0, // Ketebalan border
                ),
                borderRadius: const BorderRadius.all(Radius.circular(15)),
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10.0),
                    decoration: const BoxDecoration(
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
                  const Divider(),
                  const SizedBox(height: 10),
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
                                  color: Color.fromRGBO(247, 140, 162, 1),
                                  fontWeight: FontWeight
                                      .bold), // Atur teks menjadi di tengah
                            ),
                          ),
                          subtitle: Center(child: Text('12 Desember 2023')),
                          tileColor: Colors.white, // Latar belakang putih
                        ),
                        const Divider(),
                        ListTile(
                          title: Center(
                            child: Text(
                              'Aniversary Concert',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  color: Color.fromRGBO(247, 140, 162, 1),
                                  fontWeight: FontWeight
                                      .bold), // Atur teks menjadi di tengah
                            ),
                          ),
                          subtitle: Center(child: Text('17 Desember 2023')),
                          tileColor: Colors.white, // Latar belakang putih
                        ),
                        const Divider(),
                        ListTile(
                          title: Center(
                            child: Text(
                              'RCTI Awards',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  color: Color.fromRGBO(247, 140, 162, 1),
                                  fontWeight: FontWeight
                                      .bold), // Atur teks menjadi di tengah
                            ),
                          ),
                          subtitle: Center(child: Text('10 Januari 2024')),
                          tileColor: Colors.white, // Latar belakang putih
                        ),
                        const SizedBox(
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
    super.key,
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
        const SizedBox(
          height: 13,
        ),
        Text(
          text1.toString(),
          style: GoogleFonts.poppins(color: Colors.white),
        ),
        const SizedBox(
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
