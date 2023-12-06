

import 'package:flutter/material.dart';


import 'component/homePage.dart';

void main() {
  runApp(const Comments());
}

class Comments extends StatelessWidget {
  const Comments({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      debugShowCheckedModeBanner: false, // remove debug banner
      home: HomePage(),
    );
  }
}
