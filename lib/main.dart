
import 'package:flutter/material.dart';

import 'Tik Tok Comment Section/comment.dart';
import 'Whatsapp Clone/whatsapp.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
     
      home: WhatsApp(),
      // home: Comments(),
    );
  }
}