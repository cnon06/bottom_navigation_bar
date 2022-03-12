import 'package:flutter/material.dart';
import 'package:untitled44/Sayfa1.dart';
import 'package:untitled44/Sayfa3.dart';

import 'Sayfa2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  var sayfaListesi = [Sayfa1(),Sayfa2(),Sayfa3()];
  int secilenIndeks = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: sayfaListesi[secilenIndeks],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index)
        {
          setState(() {
            secilenIndeks=index;
          });
        },
        currentIndex: secilenIndeks,
        backgroundColor: Colors.lightGreen,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.looks_one),
          label: "1"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_two),
              label: "2"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_3),
              label: "3"),

        ],
      ),

    );
  }
}
