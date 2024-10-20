// Bottom TabBar
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 100 Days',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _selectedIndex = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _setTime() {
    print('Set Time');
  }

  void _addTime() {
    print('ADD TIME');
  }

  void itemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello World'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.adb),
            tooltip: 'Helo World',
            onPressed: _setTime,
          ),
          IconButton(
            icon: const Icon(Icons.donut_large),
            tooltip: 'Helo World',
            onPressed: _addTime,
          ),
        ],
      ),
      body: Center(
        child: GestureDetector(
          onPanDown: (DragDownDetails details) {
            print('Pan Down');
            print(details);
          },
          child: const Image(
            image: NetworkImage(
                "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjShIP5_eWOTmeBddCP7Jlwzc2unFnsxKK03dN2f7C_jNP0YX6Z7FoQJprBsCOFZ2O5gbiD3FggZJJtROlPf6C_WXKfe398sszuhKFrZqv7bluSbEIzCtlU-R3gmBUQcmWgt5W_TFEp3FI68L9SfAUF2oi9dAEo19Fg0Jq2vL8H9EwVEc7W9pKeILpSxnI/s1600/TEUNGKU%20GIF%20GITHUB%20FIXS.gif"),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.message),
            label: 'Pesan',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.account_box),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: itemTapped,
        selectedItemColor: Colors.teal,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add_box),
      ),
    );
  }
}
