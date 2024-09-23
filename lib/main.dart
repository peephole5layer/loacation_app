import 'package:flutter/material.dart';
import 'package:location_app/screens/member_list_screen.dart';
import 'package:location_app/screens/location_screens.dart';
import 'package:location_app/models/member.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Location Tracker',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.lightBlue, // Accent color
        ),
        scaffoldBackgroundColor: Colors.grey[200],
        appBarTheme: AppBarTheme(
          elevation: 0,
          color: Colors.blueAccent,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            fontSize: 16,
            color: Colors.black87,
          ),
          bodyMedium: TextStyle(
            fontSize: 14,
            color: Colors.black54,
          ),
          titleLarge: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        cardTheme: CardTheme(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 5,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MemberListScreen(),
        '/location': (context) => LocationScreen(
          member: ModalRoute.of(context)?.settings.arguments as Member,
        ),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
