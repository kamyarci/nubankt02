import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nubankt02/models/usuario.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  final Usuario usuario;

  const AppBarHome({super.key, required this.usuario});

  @override
  Size get preferredSize => const Size.fromHeight(110);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 110,
      backgroundColor: Color(0xFF830AD1),
      title: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                  color: Color(0xFF9B03FE),
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.person_outlined, color: Colors.white),
              ),
              Container(
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/icons/iconevisualizacao.png'),
                    Column(
                      children: [
                        Image.asset('assets/icons/iconeajuda.png'),
                        SizedBox(height: 5),
                      ],
                    ),
                    Image.asset('assets/icons/Iconeconvite.png'),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 14),
          Row(
            children: [
              Text(
                'Olá, ${usuario.nome}',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
