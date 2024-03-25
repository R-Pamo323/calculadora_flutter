import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: const Alignment(1.0, 1.0),
              child: Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text("Historial",
                    style: GoogleFonts.rubik(
                        textStyle: const TextStyle(
                            fontSize: 24, color: Colors.white))),
              ),
            ),
            Container(
              alignment: const Alignment(1.0, 1.0),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: (Text(
                  "X",
                  style: GoogleFonts.rubik(
                      textStyle:
                          const TextStyle(fontSize: 24, color: Colors.white)),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
