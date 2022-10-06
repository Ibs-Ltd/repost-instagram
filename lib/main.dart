import 'package:flutter/material.dart';
import 'package:repost_instagram/screens/faq_page.dart';
import 'package:repost_instagram/screens/home_page.dart';
import 'package:repost_instagram/screens/onboarding_page.dart';
import 'package:repost_instagram/screens/upgrade_membership_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Repost Instagram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnBoardingPage(),
    );
  }
}

