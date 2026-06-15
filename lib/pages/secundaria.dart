import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:nubankt02/models/carteira.dart';
import 'package:nubankt02/models/usuario.dart';
import 'package:nubankt02/widgets/appBarHome.dart';
import 'package:nubankt02/widgets/conta/conta.dart';
import 'package:nubankt02/widgets/cardsInfo.dart';
import 'package:nubankt02/widgets/cartaoCredito.dart';
import 'package:nubankt02/widgets/emprestimo.dart';
import 'package:nubankt02/widgets/investimentos.dart';
import 'package:nubankt02/widgets/seguros.dart';
import 'package:nubankt02/widgets/shopping.dart';
import 'package:nubankt02/widgets/descubraMais/descubraMais.dart';

class Secundaria extends StatefulWidget {
  const Secundaria({super.key});

  @override
  State<Secundaria> createState() => _SecundariaState();
}

class _SecundariaState extends State<Secundaria> {
  Carteira _carteira = Carteira(1356.98, 250, 3455.55, 25000);
  late Usuario _usuario = Usuario('Laysa', 30, _carteira);
  final _toFormat = NumberFormat.simpleCurrency(locale: 'pt_BR');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHome(usuario: _usuario),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Conta(usuario: _usuario, toFormat: _toFormat),
            SizedBox(height: 25),
            _BotaoMeusCartoes(),
            SizedBox(height: 25),
            CardsInfo(),
            SizedBox(height: 25),
            Divider(height: 1, color: Color(0xFFF0F1F5)),
            CartaoCredito(usuario: _usuario, toFormat: _toFormat),
            SizedBox(height: 25),
            Divider(height: 1, color: Color(0xFFF0F1F5)),
            Emprestimo(usuario: _usuario, toFormat: _toFormat),
            SizedBox(height: 25),
            Divider(height: 1, color: Color(0xFFF0F1F5)),
            Investimentos(),
            SizedBox(height: 25),
            Divider(height: 1, color: Color(0xFFF0F1F5)),
            Seguros(),
            Divider(height: 1, color: Color(0xFFF0F1F5)),
            Shopping(),
            SizedBox(height: 25),
            Divider(height: 1, color: Color(0xFFF0F1F5)),
            DescubraMais(),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

class _BotaoMeusCartoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      margin: EdgeInsets.only(left: 16, right: 30),
      decoration: BoxDecoration(
        color: Color(0xFFF0F1F5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: GestureDetector(
        onTap: () {},
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Row(
            children: [
              Image.asset('assets/icons/iconecartao.png'),
              SizedBox(width: 12),
              Text(
                'Meus cartões',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF0E0A0E),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
