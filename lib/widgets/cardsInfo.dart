import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardsInfo extends StatelessWidget {
  const CardsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(width: 16),
          Container(
            width: 220,
            constraints: BoxConstraints(minWidth: 100),
            padding: EdgeInsets.all(13),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xFFF0F1F5),
              borderRadius: BorderRadius.circular(8),
            ),
            child: RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                style: GoogleFonts.poppins(fontSize: 13, color: Color(0xFF000000)),
                children: [
                  TextSpan(text: 'Você tem até '),
                  TextSpan(
                    text: 'R\$ 12.500,00',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Color(0xFF830AD1),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(text: '\ndisponíveis para empréstimo.'),
                ],
              ),
            ),
          ),
          SizedBox(width: 16),
          Container(
            width: 250,
            padding: EdgeInsets.all(13),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xFFF0F1F5),
              borderRadius: BorderRadius.circular(8),
            ),
            child: RichText(
              text: TextSpan(
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: Color(0xFF000000),
                  fontWeight: FontWeight.w400,
                ),
                children: [
                  TextSpan(text: 'Salve seus amigos da burocracia. '),
                  TextSpan(
                    text: 'Faça um convite...',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Color(0xFF830AD1),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 16),
        ],
      ),
    );
  }
}
