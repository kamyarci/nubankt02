import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nubankt02/models/carteira.dart';
import 'package:nubankt02/models/usuario.dart';

class Secundaria extends StatefulWidget {
  const Secundaria({super.key});

  @override
  State<Secundaria> createState() => _SecundariaState();
}

class _SecundariaState extends State<Secundaria> {
  Carteira _carteira = Carteira(1356.98, 250, 3455.55, 25000);
  late Usuario _usuario = Usuario('Laysa', 30, _carteira);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 110,
        backgroundColor: Color(0xFF830AD1),
        title: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Container(
                    child: Icon(Icons.person_outlined, color: Colors.white),
                    height: 42,
                    width: 42,
                    decoration: BoxDecoration(
                      color: Color(0xFF9B03FE),
                      shape: .circle,
                    ),
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
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    'Olá, ${_usuario.nome}',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: .w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
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
                        Icon(Icons.arrow_forward_ios, color: Color(0xFF666666)),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'R\$ ${_usuario.carteira.saldo.toStringAsFixed(2).replaceAll('.', ',')}',
                          style: GoogleFonts.poppins(
                            color: Color(0xFF060606),
                            fontSize: 22,
                            fontWeight: .bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24),
                    SingleChildScrollView(
                      scrollDirection: .horizontal,
                      child: Row(
                        children: [
                          GestureDetector(
                            child: Column(
                              children: [
                                Stack(
                                  alignment: .center,
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
                                    fontWeight: .w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 16),
                          GestureDetector(
                            child: Column(
                              children: [
                                Stack(
                                  alignment: .center,
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
                                    fontWeight: .w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 16),
                          GestureDetector(
                            child: Column(
                              children: [
                                Stack(
                                  alignment: .center,
                                  children: [
                                    Image.asset('assets/icons/Ellipse.png'),
                                    Image.asset('assets/icons/iconeemprestado.png'),
                                  ],
                                ),
                                SizedBox(height: 6),
                                Text(
                                  'Pegar\nemprestado',
                                  textAlign: .center,
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: .w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 16),
                          GestureDetector(
                            child: Column(
                              children: [
                                Stack(
                                  alignment: .center,
                                  children: [
                                    Image.asset('assets/icons/Ellipse.png'),
                                    Image.asset('assets/icons/iconetransferir.png'),
                                  ],
                                ),
                                SizedBox(height: 6),
                                Text(
                                  'Transferir',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: .w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 16),
                          GestureDetector(
                            child: Column(
                              children: [
                                Stack(
                                  alignment: .center,
                                  children: [
                                    Image.asset('assets/icons/Ellipse.png'),
                                    Image.asset('assets/icons/iconedepositar.png'),
                                  ],
                                ),
                                SizedBox(height: 6),
                                Text(
                                  'Depositar',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: .w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 8),

            Container(
              height: 56,
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Color(0xFFF0F0F5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: GestureDetector(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(16, 14, 16, 14),
                  child: Row(
                    children: [
                      Image.asset('assets/icons/iconecartao.png'),
                      SizedBox(width: 12),
                      Text(
                        'Meus cartões',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: .w500,
                          color: Color(0xFF060606),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 16),

            SingleChildScrollView(
              scrollDirection: .horizontal,
              child: Row(
                children: [
                  SizedBox(width: 16),
                  Container(
                    width: 220,
                    constraints: BoxConstraints(minHeight: 90),
                    padding: EdgeInsets.all(16),
                    alignment: .center,
                    decoration: BoxDecoration(
                      color: Color(0xFFF0F0F5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: RichText(
                      textAlign: .start,
                      text: TextSpan(
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            color: Color(0xFF060606),
                          ),
                          children: [
                            TextSpan(text: 'Você tem até '),
                            TextSpan(
                              text: 'R\$ 12.500,00',
                              style: GoogleFonts.poppins(
                                fontSize: 13,
                                color: Color(0xFF830AD1),
                                fontWeight: .w600,
                              ),
                            ),
                            TextSpan(text: '\ndisponíveis para empréstimo.'),
                          ],
                        ),
                      ),
                  ),
                  SizedBox(width: 8),
                  Container(
                    width: 220,
                    constraints: BoxConstraints(minHeight: 90),
                    padding: EdgeInsets.all(16),
                    alignment: .center,
                    decoration: BoxDecoration(
                      color: Color(0xFFF0F0F5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'Salve sem burocracia com a conta reserva.',
                      textAlign: .start,
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: Color(0xFF060606),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                ],
              ),
            ),

            SizedBox(height: 8),

            Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Text(
                          'Cartão de crédito',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: .w600,
                            color: Color(0xFF060606),
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios, color: Color(0xFF666666)),
                      ],
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Fatura atual',
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: Color(0xFF666666),
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'R\$ ${_usuario.carteira.fatura.toStringAsFixed(2).replaceAll('.', ',')}',
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: .bold,
                        color: Color(0xFF060606),
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Limite disponível de R\$ ${_usuario.carteira.limite.toStringAsFixed(2).replaceAll('.', ',')}',
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: Color(0xFF666666),
                      ),
                    ),
                    SizedBox(height: 12),
                    OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        'Parcelar compras',
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: .w500,
                          color: Color(0xFF060606),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 8),

            Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.fromLTRB(16, 16, 16, 24),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Text(
                          'Emprestimo',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: .w600,
                            color: Color(0xFF060606),
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios, color: Color(0xFF666666)),
                      ],
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Valor disponível de até',
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: Color(0xFF666666),
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'R\$ ${_usuario.carteira.emprestimo.toStringAsFixed(2).replaceAll('.', ',')}',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: .bold,
                        color: Color(0xFF060606),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
