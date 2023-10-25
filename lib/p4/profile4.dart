import 'package:flutter/material.dart';

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
                  style: TextStyle(
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Center(child: Text('Nama')),
              subtitle: Center(child: Text('Angelina Christy')),
            ),
            Divider(),
            ListTile(
              title: Center(child: Text('Tanggal Lahir')),
              subtitle: Center(child: Text('5 Desember 2005')),
            ),
            Divider(),
            ListTile(
              title: Center(child: Text('Golongan Darah')),
              subtitle: Center(child: Text('O')),
            ),
            Divider(),
            ListTile(
              title: Center(child: Text('Horoskop')),
              subtitle: Center(child: Text('Sagittarius')),
            ),
            Divider(),
            ListTile(
              title: Center(child: Text('Tinggi Badan')),
              subtitle: Center(child: Text('163 cm')),
            ),
            Divider(),
            ListTile(
              title: Center(child: Text('Nama Panggilan')),
              subtitle: Center(child: Text('Christy')),
            ),
            Divider(),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 135, // Lebar kotak pertama
                  height: 40, // Tinggi kotak pertama
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255,
                        255), // Warna latar belakang kotak pertama
                    border: Border.all(
                      color: const Color.fromRGBO(
                          247, 140, 162, 1), // Warna border kotak pertama
                      width: 2.0, // Lebar border kotak pertama
                    ),
                    borderRadius: BorderRadius.circular(
                        10.0), // Radius sudut kotak pertama
                  ),
                  child: Center(
                    child: Text(
                      'Membership',
                      style: TextStyle(
                        color: Colors.black, // Warna teks
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 130, // Lebar kotak kedua
                  height: 40, // Tinggi kotak kedua
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(
                        255, 255, 255, 255), // Warna latar belakang kotak kedua
                    border: Border.all(
                      color: const Color.fromRGBO(
                          247, 140, 162, 1), // Warna border kotak kedua
                      width: 2.0, // Lebar border kotak kedua
                    ),
                    borderRadius:
                        BorderRadius.circular(10.0), // Radius sudut kotak kedua
                  ),
                  child: Center(
                    child: Text(
                      'Setting',
                      style: TextStyle(
                        color: Colors.black, // Warna teks
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
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
                  Text(
                    'JIKOSHOUKAI',
                    style: TextStyle(
                      color: Colors.white, // Warna teks putih
                      fontWeight: FontWeight.bold, // Teks bold
                      fontSize: 19, // Ukuran font 19
                    ),
                  ),
                  SizedBox(
                      height:
                          15), // Jarak antara teks "JIKOSHOUKAI" dan teks selanjutnya
                  Center(
                    child: Text(
                      '"Peduli dan baik hati... Siapakah dia? Christy..."',
                      style: TextStyle(
                        color: Colors.white, // Warna teks putih
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color.fromRGBO(247, 140, 162, 9),
              ),
              child: Row(
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
                    height: 250, // Atur tinggi ListView sesuai kebutuhan
                    child: ListView(
                      children: <Widget>[
                        ListTile(
                          title: Center(
                            child: Text(
                              'Pestapora',
                              textAlign: TextAlign.center,
                              style: TextStyle(
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
                              style: TextStyle(
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
                              style: TextStyle(
                                  color: const Color.fromRGBO(247, 140, 162, 1),
                                  fontWeight: FontWeight
                                      .bold), // Atur teks menjadi di tengah
                            ),
                          ),
                          subtitle: Center(child: Text('10 Januari 2024')),
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
        SizedBox(
          height: 13,
        ),
        Text(
          text1.toString(),
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 13,
        ),
        Text(
          text2.toString(),
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}