import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BotaoAcao extends StatelessWidget {
  final String iconePath;
  final String label;

  const BotaoAcao({super.key, required this.iconePath, required this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 4.5,
      child: GestureDetector(
        onTap: () {},
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('assets/icons/Ellipse.png'),
                Image.asset(iconePath),
              ],
            ),
            SizedBox(height: 6),
            Text(
              label,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
