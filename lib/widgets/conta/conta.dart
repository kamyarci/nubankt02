import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:nubankt02/models/usuario.dart';
import 'package:nubankt02/widgets/conta/botaoAcao.dart';

class Conta extends StatelessWidget {
  final Usuario usuario;
  final NumberFormat toFormat;

  const Conta({super.key, required this.usuario, required this.toFormat});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 30, 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Conta',
                      style: GoogleFonts.poppins(
                        color: Color(0xFF060606),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, color: Color(0xFF666666), size: 13),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      toFormat.format(usuario.carteira.saldo),
                      style: GoogleFonts.poppins(
                        color: Color(0xFF060606),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BotaoAcao(iconePath: 'assets/icons/icone.png', label: 'Área Pix'),
                BotaoAcao(iconePath: 'assets/icons/iconepagar.png', label: 'Pagar'),
                BotaoAcao(iconePath: 'assets/icons/iconeemprestado.png', label: 'Pegar\nemprestado'),
                BotaoAcao(iconePath: 'assets/icons/iconetransferir.png', label: 'Transferir'),
                BotaoAcao(iconePath: 'assets/icons/iconedepositar.png', label: 'Depositar'),
              ],
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
