import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nubankt02/widgets/descubraMais/cardDescubra.dart';

class DescubraMais extends StatelessWidget {
  const DescubraMais({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Descubra mais',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF000000),
                  ),
                ),
                Icon(Icons.arrow_forward_ios, color: Color(0xFF666666), size: 13),
              ],
            ),
          ),
        ),
        SizedBox(height: 16),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: 16),
              CardDescubra(
                imagePath: 'assets/images/picture1.jpg',
                titulo: 'Parcele compras no app',
                descricao: 'Descontos em compras à vista no crédito, controle total sobr...',
                labelBotao: 'Conhecer',
              ),
              SizedBox(width: 12),
              CardDescubra(
                imagePath: 'assets/images/picture2.jpg',
                titulo: 'Portabilidade de salário',
                descricao: 'Sua liberdade financeira começa com você escolhend...',
                labelBotao: 'Conhecer',
              ),
              SizedBox(width: 12),
              CardDescubra(
                imagePath: 'assets/images/picture4.jpg',
                titulo: 'Indique seus amigos',
                descricao: 'Mostre aos seus amigos como é fácil ter uma vida sem...',
                labelBotao: 'Indicar Amigos',
              ),
              SizedBox(width: 12),
              CardDescubra(
                imagePath: 'assets/images/picture3.jpg',
                titulo: 'WhatsApp',
                descricao: 'Pagamentos seguros, rápidos e sem tarifa. A experiência...',
                labelBotao: 'Quero Conhecer',
              ),
              SizedBox(width: 16),
            ],
          ),
        ),
      ],
    );
  }
}
