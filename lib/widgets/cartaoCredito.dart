import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:nubankt02/models/usuario.dart';

class CartaoCredito extends StatelessWidget {
  final Usuario usuario;
  final NumberFormat toFormat;

  const CartaoCredito({super.key, required this.usuario, required this.toFormat});

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
                  'Cartão de crédito',
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
              'Fatura atual',
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Color(0xFF848389),
              ),
            ),
            SizedBox(height: 4),
            Text(
              toFormat.format(usuario.carteira.fatura),
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF060606),
              ),
            ),
            SizedBox(height: 4),
            Text(
              'Limite disponível de ${toFormat.format(usuario.carteira.limite)}',
              style: GoogleFonts.poppins(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.2,
                color: Color(0xFF848389),
              ),
            ),
            SizedBox(height: 25),
            InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: 150,
                padding: EdgeInsets.all(5),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xFFF0F1F5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Parcelar compras',
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF060606),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
