import 'package:flutter/material.dart';
import 'package:iconify/iconify.dart';

class ProfileSettingsScreen extends StatelessWidget {
  const ProfileSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.all(16.0),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color.fromRGBO(255, 153, 0, 1),
                  width: 5,
                ),
                color: Colors.black,
              ),
              child: Icon(
                Icons.person,
                size: 50,
                color: Color.fromRGBO(255, 153, 0, 1),
              ),
            ),
            const Text(
              'John Doe',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'johndoe@example.com',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(80, 8, 80, 15),
                child: CustomButton(
                  text: 'Upgrade to PRO',
                  backgroundColor: Color.fromRGBO(255, 152, 0, 0.7),
                  textColor: Color.fromRGBO(0, 0, 0, 1),
                  onPressed: () {
                    // Do something when the button is clicked
                  },
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 15, 20, 20),
                child: CustomButton(
                  text: 'Privacy',
                  borderRadius: 28,
                  backgroundColor: Color.fromRGBO(197, 197, 196, 0.694),
                  textColor: Color.fromRGBO(0, 0, 0, 1),
                  onPressed: () {
                    // Do something when the button is clicked
                  },
                  icon: Icon(
                      size: 30,
                      color: Colors.black,
                      Icons.privacy_tip_outlined),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 6, 20, 20),
                child: CustomButton(
                  text: 'Purchase History',
                  borderRadius: 28,
                  backgroundColor: Color.fromRGBO(197, 197, 196, 0.694),
                  textColor: Color.fromRGBO(0, 0, 0, 1),
                  onPressed: () {
                    // Do something when the button is clicked
                  },
                  icon: Icon(size: 30, color: Colors.black, Icons.history),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 6, 20, 20),
                child: CustomButton(
                  text: 'Help & Support',
                  borderRadius: 28,
                  backgroundColor: Color.fromRGBO(197, 197, 196, 0.694),
                  textColor: Color.fromRGBO(0, 0, 0, 1),
                  onPressed: () {
                    // Do something when the button is clicked
                  },
                  icon: Icon(
                      size: 30,
                      color: Colors.black,
                      Icons.help_outline_rounded),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 6, 20, 20),
                child: CustomButton(
                  text: 'Settings',
                  borderRadius: 28,
                  backgroundColor: Color.fromRGBO(197, 197, 196, 0.694),
                  textColor: Color.fromRGBO(0, 0, 0, 1),
                  onPressed: () {
                    // Do something when the button is clicked
                  },
                  icon: Icon(size: 30, color: Colors.black, Icons.settings),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 6, 20, 20),
                child: CustomButton(
                  text: 'Invite a Friend',
                  borderRadius: 28,
                  backgroundColor: Color.fromRGBO(197, 197, 196, 0.694),
                  textColor: Color.fromRGBO(0, 0, 0, 1),
                  onPressed: () {
                    // Do something when the button is clicked
                  },
                  icon: Icon(
                      size: 30, color: Colors.black, Icons.exposure_plus_1),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 6, 20, 20),
                child: LogOutButton(
                  text: 'Logout',
                  borderRadius: 28,
                  backgroundColor: Color.fromRGBO(0, 0, 0, 1),
                  textColor: Color.fromRGBO(255, 255, 255, 1),
                  onPressed: () {
                    // Do something when the button is clicked
                  },
                )),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double padding;
  final double borderRadius;
  final Color backgroundColor;
  final TextStyle textStyle;
  final Widget? icon;
  final Color textColor;
  final double iconSize;
  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.padding = 20.0,
    this.borderRadius = 40.0,
    this.backgroundColor = Colors.blue,
    this.textStyle = const TextStyle(fontSize: 18.0),
    this.icon,
    this.textColor = Colors.white,
    this.iconSize = 24.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Padding(
          padding:
              EdgeInsets.only(left: 10.0, right: 20.0, top: 13, bottom: 13),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  if (icon != null) ...[
                    icon!,
                    SizedBox(width: 10),
                  ],
                  Text(
                    text,
                    style: textStyle.copyWith(color: textColor),
                  ),
                ],
              ),
              Icon(size: 30, Icons.chevron_right_outlined, color: Colors.black),
            ],
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
    );
  }
}

class LogOutButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double padding;
  final double borderRadius;
  final Color backgroundColor;
  final TextStyle textStyle;
  final Widget? icon;
  final Color textColor;
  final double iconSize;
  const LogOutButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.padding = 20.0,
    this.borderRadius = 40.0,
    this.backgroundColor = Colors.blue,
    this.textStyle = const TextStyle(fontSize: 18.0),
    this.icon,
    this.textColor = Colors.white,
    this.iconSize = 24.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 17, 20, 17),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (icon != null) ...[
                icon!,
                SizedBox(width: 10),
              ],
              Text(
                text,
                style: textStyle.copyWith(color: textColor),
              ),
            ],
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Settings',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfileSettingsScreen(),
    );
  }
}

void main() {
  runApp(MyApp());
}
