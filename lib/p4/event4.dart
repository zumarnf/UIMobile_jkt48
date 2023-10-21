import 'package:flutter/material.dart';

class event4 extends StatelessWidget {
  const event4({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Container(
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
                                  left: 60.0), // Tambahkan margin kiri di sini
                              child: Text(
                                "Member",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28,
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
                  children: List.generate(4, (rowIndex) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(3, (colIndex) {
                        final imageIndex = rowIndex * 3 + colIndex;
                        if (imageIndex < imageUrls.length) {
                          return Container(
                            width: 95, // Lebar kotak kecil
                            height: 125, // Tinggi kotak kecil
                            margin: const EdgeInsets.all(
                                4.0), // Margin antar kotak kecil
                            color: Color.fromRGBO(
                                255, 255, 255, 1), // Warna kotak kecil
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 75, // Lebar gambar
                                  height: 75, // Tinggi gambar
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
                                  style: TextStyle(
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
              Container(
                width: 145, // Lebar kotak pertama
                height: 40, // Tinggi kotak pertama
                decoration: BoxDecoration(
                  color: Color.fromRGBO(
                      210, 43, 82, 1), // Warna latar belakang kotak pertama
                  borderRadius:
                      BorderRadius.circular(20.0), // Radius sudut kotak pertama
                ),
                child: Center(
                  child: Text(
                    'Alamat Fan Letter',
                    style: TextStyle(
                      color: const Color.fromARGB(
                          255, 250, 250, 250), // Warna teks
                    ),
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
                          style: TextStyle(
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
                                style: TextStyle(
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
                                style: TextStyle(
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
                                style: TextStyle(
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
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(
                                  210, 43, 82, 1), // Warna latar belakang putih
                              borderRadius: BorderRadius.circular(
                                  15.0), // Atur radius sudut kotak
                            ),
                            child: Center(
                              child: Text(
                                'Lihat selengkapnya >>',
                                style: TextStyle(
                                  color: Color.fromRGBO(
                                      255, 255, 255, 1), // Warna teks
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
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
