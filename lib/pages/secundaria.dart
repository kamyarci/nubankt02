import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nubankt02/models/carteira.dart';
import 'package:nubankt02/models/usuario.dart';
import 'package:intl/intl.dart';

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
      appBar: AppBar(
        toolbarHeight: 110,
        backgroundColor: Color(0xFF830AD1),
        title: Column(
            children: [
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Container(
                    height: 42,
                    width: 42,
                    decoration: BoxDecoration(
                      color: Color(0xFF9B03FE),
                      shape: .circle,
                    ),
                    child: Icon(Icons.person_outlined, color: Colors.white),
                  ),
                  Container(
                    width: 100,
                    child: Row(
                      mainAxisAlignment: .spaceBetween,
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
                    'Olá, ${_usuario.nome}',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: .w600,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 16, 30, 0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: .spaceBetween,
                          children: [
                            Text(
                              'Conta',
                              style: GoogleFonts.poppins(
                                color: Color(0xFF060606),
                                fontSize: 16,
                                fontWeight: .w500,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFF666666),
                              size: 13,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              _toFormat.format(_usuario.carteira.saldo),
                              style: GoogleFonts.poppins(
                                color: Color(0xFF060606),
                                fontSize: 16,
                                fontWeight: .w600,
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
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 4.5,
                          child: GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Image.asset('assets/icons/Ellipse.png'),
                                    Image.asset('assets/icons/icone.png'),
                                  ],
                                ),
                                SizedBox(height: 6),
                                Text(
                                  'Área Pix',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 4.5,
                          child: GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Image.asset('assets/icons/Ellipse.png'),
                                    Image.asset('assets/icons/iconepagar.png'),
                                  ],
                                ),
                                SizedBox(height: 6),
                                Text(
                                  'Pagar',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 4.5,
                          child: GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Image.asset('assets/icons/Ellipse.png'),
                                    Image.asset(
                                      'assets/icons/iconeemprestado.png',
                                    ),
                                  ],
                                ),
                                SizedBox(height: 6),
                                Text(
                                  'Pegar\nemprestado',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 4.5,
                          child: GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Image.asset('assets/icons/Ellipse.png'),
                                    Image.asset(
                                      'assets/icons/iconetransferir.png',
                                    ),
                                  ],
                                ),
                                SizedBox(height: 6),
                                Text(
                                  'Transferir',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 4.5,
                          child: GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Image.asset('assets/icons/Ellipse.png'),
                                    Image.asset(
                                      'assets/icons/iconedepositar.png',
                                    ),
                                  ],
                                ),
                                SizedBox(height: 6),
                                Text(
                                  'Depositar',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),

            SizedBox(height: 25),

            Container(
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
                          fontWeight: .w500,
                          color: Color(0xFF0E0A0E),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 25),

            SingleChildScrollView(
              scrollDirection: .horizontal,
              child: Row(
                children: [
                  SizedBox(width: 16),
                  Container(
                    width: 220,
                    constraints: BoxConstraints(minWidth: 100),
                    padding: EdgeInsets.all(13),
                    alignment: .center,
                    decoration: BoxDecoration(
                      color: Color(0xFFF0F1F5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: RichText(
                      textAlign: .start,
                      text: TextSpan(
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          color: Color(0xFF000000),
                        ),
                        children: [
                          TextSpan(text: 'Você tem até '),
                          TextSpan(
                            text: 'R\$ 12.500,00',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Color(0xFF830AD1),
                              fontWeight: .w400,
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
                    alignment: .center,
                    decoration: BoxDecoration(
                      color: Color(0xFFF0F1F5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'Salve seus amigos da burocracia. Faça um convite!',
                      textAlign: .start,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Color(0xFF000000),
                        fontWeight: .w400,
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                ],
              ),
            ),

            SizedBox(height: 25),
            Divider(height: 1, color: Color(0xFFF0F1F5)),

            Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.fromLTRB(16, 16, 30, 0),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Text(
                          'Cartão de crédito',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: .w600,
                            color: Color(0xFF000000),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF666666),
                          size: 13,
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Fatura atual',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: .bold,
                        color: Color(0xFF848389),
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      _toFormat.format(_usuario.carteira.fatura),
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: .w600,
                        color: Color(0xFF060606),
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Limite disponível de ${_toFormat.format(_usuario.carteira.limite)}',
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: .w500,
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
            ),

            SizedBox(height: 25),
            Divider(height: 1, color: Color(0xFFF0F1F5)),

            Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.fromLTRB(16, 16, 30, 0),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Text(
                          'Empréstimo',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: .w600,
                            color: Color(0xFF000000),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF666666),
                          size: 13,
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Valor disponível de até',
                      style: GoogleFonts.poppins(
                        fontSize: 11,
                        color: Color(0xFF777A83),
                        fontWeight: .w600,
                      ),
                    ),
                    Text(
                      _toFormat.format(_usuario.carteira.emprestimo),
                      style: GoogleFonts.poppins(
                        fontSize: 11,
                        fontWeight: .w600,
                        color: Color(0xFF777A83),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 25),
            Divider(height: 1, color: Color(0xFFF0F1F5)),

            Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.fromLTRB(16, 16, 30, 0),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Text(
                          'Investimentos',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: .w600,
                            color: Color(0xFF000000),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF666666),
                          size: 13,
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: Text(
                        'O jeito Nu de investir: sem asteriscos, linguagem fácil e a partir de R\$1. Saiba mais.  ',
                        style: GoogleFonts.poppins(
                          fontSize: 11,
                          color: Color(0xFF777A83),
                          fontWeight: .w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 25),
            Divider(height: 1, color: Color(0xFFF0F1F5)),
            Container(
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
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 14,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFF0F1F5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.favorite_border,
                                color: Color(0xFF060606),
                                size: 20,
                              ),
                              SizedBox(width: 12),
                              Text(
                                'Seguro vida',
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
                    ),
                    SizedBox(height: 25),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 14,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFF0F1F5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.smartphone,
                                color: Color(0xFF000000),
                                size: 20,
                              ),
                              SizedBox(width: 12),
                              Text(
                                'Seguro celular',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF000000),
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
                    ),
                  ],
                ),
              ),
            ),
            Divider(height: 1, color: Color(0xFFF0F1F5)),
            Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Shopping',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF000000),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF666666),
                          size: 13,
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Vantagens exclusivas das nossas marcas preferidas',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Color(0xFF737375),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            Divider(height: 1, color: Color(0xFFF0F1F5)),
            Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.fromLTRB(16, 16, 16, 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
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
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF666666),
                          size: 13,
                        ),
                      ],
                    ),
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
                  Container(
                    width: 200,
                    decoration: BoxDecoration(
                      color: Color(0xFFF0F1F5),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(12),
                          ),
                          child: Image.asset(
                            'assets/images/picture1.jpg',
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
                                'Parcele compras no app',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF060606),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Descontos em compras à vista no crédito, controle total sobr...',
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
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 8,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF830AD1),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Text(
                                    'Conhecer',
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
                  ),
                  SizedBox(width: 12),
                  Container(
                    width: 200,
                    decoration: BoxDecoration(
                      color: Color(0xFFF0F1F5),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(12),
                          ),
                          child: Image.asset(
                            'assets/images/picture2.jpg',
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
                                'Portabilidade de salário',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF060606),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Sua liberdade financeira começa com você escolhend...',
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
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 8,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF830AD1),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Text(
                                    'Conhecer',
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
                  ),
                  SizedBox(width: 16),
                ],
              ),
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
