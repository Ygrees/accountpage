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
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.all(50),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
                },
                child: Icon(Icons.person),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(50),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingsPage()),
                  );
                },
                child: Icon(Icons.settings),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Image.asset(
              'images/card_image.png',
              height: 200,
              width: 300,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OutlinedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                elevation: MaterialStateProperty.all(0),
                minimumSize: MaterialStateProperty.all(Size(145, 40)),
              ),
              child: Text('Extend',
              style: TextStyle(color: Colors.black)
              ),

              onPressed: () {
                // Actions when pressing button 1
              },
            ),
            OutlinedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                elevation: MaterialStateProperty.all(0),
                minimumSize: MaterialStateProperty.all(Size(140, 40)),
              ),
              child: Text('Freeze',
                  style: TextStyle(color: Colors.black)
              ),
              onPressed: () {
                // Actions when pressing button 2
              },
            ),
          ],
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
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ProfileImageAndButtons(),
            SizedBox(height: 20),
            SizedBox(
              width: 320,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.transparent),
                  elevation: MaterialStateProperty.all(0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.payment, color: Colors.black),
                    SizedBox(width: 10),
                    Text('Payment',
                        style: TextStyle(color: Colors.black)
                    ),
                  ],
                ),
                onPressed: () {
                  // Navigate to Diyar's page
                },
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 320,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.transparent),
                  elevation: MaterialStateProperty.all(0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.notifications, color: Colors.black),
                    SizedBox(width: 10),
                Text('Notifications',
                  style: TextStyle(color: Colors.black)
                ),
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
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.transparent),
                  elevation: MaterialStateProperty.all(0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.phone, color: Colors.black),
                    SizedBox(width: 10),
                Text('Support',
                  style: TextStyle(color: Colors.black)
                ),
                  ],
                ),
                onPressed: () {

                },
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 320,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.transparent),
                  elevation: MaterialStateProperty.all(0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.exit_to_app, color: Colors.black),
                    SizedBox(width: 10),
                Text('Log Out',
                  style: TextStyle(color: Colors.black)
                ),
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




