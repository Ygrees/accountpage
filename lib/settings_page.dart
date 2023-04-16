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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Settings Page',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        backgroundColor: Colors.black, // Установлен голубой цвет фона
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
          children: [],
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
          color: Colors.black,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  ProfileImageAndButtons(),
                  SizedBox(height: 10),
                  TextButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.adjust),
                        Expanded(
                          child: Text(
                            '1',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      primary: Colors.black,
                      textStyle: TextStyle(fontSize: 18),
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(height: 10),
                  TextButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.adjust),
                        Expanded(
                          child: Text(
                            '2',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      primary: Colors.black,
                      textStyle: TextStyle(fontSize: 18),
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(height: 10),
                  TextButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.adjust),
                        Expanded(
                          child: Text(
                            '3',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                        style: TextButton.styleFrom(
    backgroundColor: Colors.transparent,
    primary: Colors.black,
    textStyle: TextStyle(fontSize: 18),
    ),
    onPressed: () {
    // Действия при нажатии на кнопку 3
    },
    ),
    SizedBox(height: 10),
    TextButton(
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Icon(Icons.exit_to_app),
    Expanded(
    child: Text(
    'Log Out',
    textAlign: TextAlign.center,
    ),
    ),
    ],
    ),
    style: TextButton.styleFrom(
    backgroundColor: Colors.transparent,
    primary: Colors.black,
    textStyle: TextStyle(fontSize: 18),
    ),
    onPressed: () {
    // Действия при нажатии на кнопку "Log Out"
    },
    ),
    ],
    ),
    ),
    ),
    ),
    );
  }
}



