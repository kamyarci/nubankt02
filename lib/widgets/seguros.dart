import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Seguros extends StatelessWidget {
  const Seguros({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.fromLTRB(16, 16, 16, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Seguros',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xFF000000),
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Proteção para você cuidar do que importa',
              style: GoogleFonts.poppins(
                fontSize: 11,
                color: Color(0xFF777A83),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 25),
            _ItemSeguro(icone: Icons.favorite_border, label: 'Seguro vida'),
            SizedBox(height: 25),
            _ItemSeguro(icone: Icons.smartphone, label: 'Seguro celular'),
          ],
        ),
      ),
    );
  }
}

class _ItemSeguro extends StatelessWidget {
  final IconData icone;
  final String label;

  const _ItemSeguro({required this.icone, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: Color(0xFFF0F1F5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icone, color: Color(0xFF060606), size: 20),
              SizedBox(width: 12),
              Text(
                label,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF060606),
                ),
              ),
            ],
          ),
          Text(
            'Conhecer',
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color(0xFF830AD1),
            ),
          ),
        ],
      ),
    );
  }
}
