
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class iconsText extends StatelessWidget {
  const iconsText({
    super.key,
    required this.icon,
    required this.text,
    this.onPressed,
  });

  final IconData icon;
  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          IconButton(
              onPressed: onPressed ??
                  () {}, // if onpressed isnot used then use empty function
              icon: Icon(
                icon,
                size: 30,
              )),
          Text(
            text,
            style: GoogleFonts.roboto(
                textStyle: const TextStyle(
              fontSize: 20,
            )),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
