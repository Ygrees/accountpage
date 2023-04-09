import 'package:flutter/material.dart';
import 'profile_page.dart';
import 'settings_page.dart';
import 'main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Settings Page',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        backgroundColor: Colors.white, // set background color here
        body: ProfilePage(),
      ),
    );
  }
}

class ProfileImageAndButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            ]   // children
          ),
       ],
     );
   }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(''),
        iconTheme: IconThemeData(
          color: Colors.black, // Цвет здесь
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );// Действия при нажатии на кнопку
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ProfileImageAndButtons(),
            SizedBox(height: 10),
            SizedBox(
              width: 320,
              child: ElevatedButton(
                child: Text('1'),
                onPressed: () {
                  // Действия при нажатии на кнопку 1
                },
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 320,
              child: ElevatedButton(
                child: Text('2'),
                onPressed: () {
                  // Действия при нажатии на кнопку 2
                },
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 320,
              child: ElevatedButton(
                child: Text('3'),
                onPressed: () {
                  // Действия при нажатии на кнопку 3
                },
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 320,
              child: ElevatedButton(
                child: Text('Log Out'),
                onPressed: () {
                  // Действия при нажатии на кнопку 5
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
