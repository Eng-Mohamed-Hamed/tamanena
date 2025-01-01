import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpecificDoaaPage extends StatelessWidget {
  final String doaa;
  final String title;

  const SpecificDoaaPage({super.key, required this.doaa, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1c1c1c),
      appBar: AppBar(
        backgroundColor: Color(0xff2e7d32),
        centerTitle: true,
        title: Text(
          title,
          style: GoogleFonts.amiri(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: Text(
              doaa,
              style: GoogleFonts.amiri(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
