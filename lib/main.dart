import 'package:flutter/material.dart';
import 'profile_page.dart';
import 'settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    MaterialColor customColor = MaterialColor(0xff014131, <int, Color>{
      50: Color(0xff014131),
      100: Color(0xff014131),
      200: Color(0xff014131),
      300: Color(0xff014131),
      400: Color(0xff014131),
      500: Color(0xff014131),
      600: Color(0xff014131),
      700: Color(0xff014131),
      800: Color(0xff014131),
      900: Color(0xff014131),
    });

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Account Page',
      theme: ThemeData(
        primarySwatch: customColor,
      ),
      home: Scaffold(
        backgroundColor: Colors.white, // set background color here
        body: AccountPage(),
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
              SizedBox(width: 10),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 50, 80),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilePage()),
                    );
                  },
                  child: Image.asset(
                    'images/profile_icon.png',
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Padding(
                padding: EdgeInsets.fromLTRB(140, 0, 50, 80),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SettingsPage()),
                    );
                  },
                  child: Image.asset(
                    'images/gear_icon.png',
                    width: 45,
                    height: 45,
                  ),
                ),
              ),
            ]   // children
        ),

        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 40, 0),
          child: Center(
            child: Image.asset(
              'images/card_image.png',
              height: 200,
              width: 300,
            ),
          ),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            ElevatedButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(150, 40)),
              ),
              child: Text('Extend'),
              onPressed: () {
                // Действия при нажатии на кнопку 1
              },
            ),
            SizedBox(width: 20),
            ElevatedButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(150, 40)),
              ),
              child: Text('Freeze'),
              onPressed: () {
                // Действия при нажатии на кнопку 2
              },
            ),
          ], //children
        ),
      ],
    );
  }
}


class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'My Account',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ProfileImageAndButtons(),
            SizedBox(height: 20),
            SizedBox(
              width: 320,
              child: ElevatedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.payment),
                    SizedBox(width: 10),
                    Text('Payment'),
                  ],
                ),
                onPressed: () {
                    // Сюда на страницу Дияра рут
                },
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 320,
              child: ElevatedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.notifications),
                    SizedBox(width: 10),
                    Text('Notifications'),
                  ],
                ),
                onPressed: () {
                  // Действия при нажатии на кнопку 2
                },
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 320,
              child: ElevatedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.phone),
                    SizedBox(width: 10),
                    Text('Support'),
                  ],
                ),
                onPressed: () {
                  // Действия при нажатии на кнопку 3
                },
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 320,
              child: ElevatedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.exit_to_app),
                    SizedBox(width: 10),
                    Text('Log Out'),
                  ],
                ),
                onPressed: () {
                  // Действия при нажатии на кнопку 4
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}



