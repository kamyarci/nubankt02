import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:nubankt02/models/usuario.dart';

class Emprestimo extends StatelessWidget {
  final Usuario usuario;
  final NumberFormat toFormat;

  const Emprestimo({super.key, required this.usuario, required this.toFormat});

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
                  'Empréstimo',
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
            Text(
              'Valor disponível de até',
              style: GoogleFonts.poppins(
                fontSize: 11,
                color: Color(0xFF777A83),
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              toFormat.format(usuario.carteira.emprestimo),
              style: GoogleFonts.poppins(
                fontSize: 11,
                fontWeight: FontWeight.w600,
                color: Color(0xFF777A83),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
