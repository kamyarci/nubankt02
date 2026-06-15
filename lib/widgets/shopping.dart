import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Shopping extends StatelessWidget {
  const Shopping({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shopping',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF000000),
                  ),
                ),
                Icon(Icons.arrow_forward_ios, color: Color(0xFF666666), size: 13),
              ],
            ),
            SizedBox(height: 8),
            Text(
              'Vantagens exclusivas das nossas marcas preferidas',
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: Color(0xFF737375),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
