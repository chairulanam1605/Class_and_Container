import 'package:flutter/material.dart';
import 'package:flutter_app1/HalamanKetiga.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'Oswald'),
      home: HalamanHome(),
    );
  }
}
class HalamanHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('SMK Telkom Purwokerto'),
        backgroundColor: Colors.blue[700],
        centerTitle: true,
      ),
      body: new Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 0, vertical: 50),
          child: Column(
            children: <Widget>[
              Text('Halaman Home', style: Theme.of(context).textTheme.headline5,),
              Text('Nama Lengkap : M.Chairul Anam'),
              Text('Kelas : XII RPL 4'),
              Text('No Absen : 13'),
              new Container(margin: EdgeInsets.symmetric(vertical: 12),child:
              new TextButton.icon(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanPertama() ));},
                icon: Icon(Icons.ac_unit, color: Colors.purple[800],),
                label: Text('Halaman Pertama', style: TextStyle(color: Colors.purple[800]),),
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
              ),
              ),
              new Container(margin: EdgeInsets.symmetric(vertical: 12),child:
              new TextButton.icon(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanKedua() ));},
                icon: Icon(Icons.account_balance_outlined, color: Colors.purple[100],),
                label: Text('Halaman Kedua', style: TextStyle(color: Colors.purple[100])),
                style: TextButton.styleFrom(backgroundColor: Colors.brown),
              ),
              ),
              new Container(margin: EdgeInsets.symmetric(vertical: 12),child:
              new TextButton.icon(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanKetiga() ));},
                icon: Icon(Icons.account_tree, color: Colors.amber,),
                label: Text('Halaman Ketiga', style: TextStyle(color: Colors.amber)),
                style: TextButton.styleFrom(backgroundColor: Colors.lightGreen),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class HalamanPertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        decoration: new BoxDecoration(color: Colors.lightBlueAccent),
        child:new Center(
          child: Text('Ini adalah Halaman Pertama', style: TextStyle(color: Colors.purple[800])),
        ),
      ),
    );
  }
}
class HalamanKedua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        decoration: new BoxDecoration(color: Colors.brown),
        child: new Center(
          child: Text('Ini adalah Halaman Kedua', style: TextStyle(color: Colors.purple[100])),
        ),
      ),
    );
  }
}