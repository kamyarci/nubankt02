import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardDescubra extends StatelessWidget {
  final String imagePath;
  final String titulo;
  final String descricao;
  final String labelBotao;

  const CardDescubra({
    super.key,
    required this.imagePath,
    required this.titulo,
    required this.descricao,
    required this.labelBotao,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        color: Color(0xFFF0F1F5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              imagePath,
              width: 240,
              height: 90,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF060606),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  descricao,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: Color(0xFF777A83),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 12),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    decoration: BoxDecoration(
                      color: Color(0xFF830AD1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      labelBotao,
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
