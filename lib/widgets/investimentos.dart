import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Investimentos extends StatelessWidget {
  const Investimentos({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.fromLTRB(16, 16, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Investimentos',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF000000),
                  ),
                ),
                Icon(Icons.arrow_forward_ios, color: Color(0xFF666666), size: 13),
              ],
            ),
            SizedBox(height: 4),
            Padding(
              padding: EdgeInsets.only(right: 16),
              child: Text(
                'O jeito Nu de investir: sem asteriscos, linguagem fácil e a partir de R\$1. Saiba mais.  ',
                style: GoogleFonts.poppins(
                  fontSize: 11,
                  color: Color(0xFF777A83),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
