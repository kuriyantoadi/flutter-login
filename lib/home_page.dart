import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final icon_gambar = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/profile.png'),
        ),
      ),
    );

    final sub_judul = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Selamat Datang User',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final isi_konten = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Selamat Datang Di Halaman Login',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[icon_gambar, sub_judul, isi_konten],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
