import 'package:flutter/material.dart';
import 'package:kkkooo/booking_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        /*appBar: AppBar(title: Text('Flutter Card Example')),*/
        backgroundColor: Colors.blue[50],
        body: BookingList(),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue[50],
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.qr_code_scanner,size: 40,),
              label: 'Scanner',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded),
              label: 'Account',
            ),
          ],
          //currentIndex: _selectedIndex,
          //selectedItemColor: Colors.blue[800],
          //onTap: _onItemTapped,
        ),
      ),
    );
  }
}
