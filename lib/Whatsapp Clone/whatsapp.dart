import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(WhatsApp());
}

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  get kAccentColor => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp UI Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: kAccentColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}