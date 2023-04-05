import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil', style: TextStyle(
              fontSize: 18,
              fontFamily: 'Sans-Serif',
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/images/rizky.jpg'),
            ),
            SizedBox(height: 20),
            Text('Muhammad Rizky Susanto', style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('123200145 - IF B', style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Selalu lakukanlah hal-hal baik dan indah.',
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Centaur',
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Detail()),
                );
              },
              child: Text('Detail'),
            ),
          ],
        ),
      ),
    );
  }
}

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail',
          style: TextStyle(
              fontSize: 17,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.normal),
        ),
      ),
      body: Card(
        elevation: 12, // menentukan tingkat kejelasan (elevation)
        shadowColor: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Container(
                width: 200, // ukuran avatar
                height: 200, // ukuran avatar
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/rizky2.jpg'), // link gambar
                  ),
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Muhammad Rizky Susanto',
                style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Centaur',
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(height: 8),
              Text(
                '123200145',
                style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Centaur',
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(height: 8),
              Text('Teknologi Pemrograman Mobile IF-B', style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Centaur',
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(height: 8),
              Text('Sleman, 3 Februari 2002', style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Centaur',
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(height: 8),
              Text(
                'Harapan : Menjadi Pengusaha dan Mencipta Karya yang Timelapse',
                style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Centaur',
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
      ),
    );
  }
}