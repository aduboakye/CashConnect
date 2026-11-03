import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateSusuaccount extends StatefulWidget {
  const CreateSusuaccount({super.key});

  @override
  State<CreateSusuaccount> createState() => _CreateSusuaccountState();
}

class _CreateSusuaccountState extends State<CreateSusuaccount> {
  Widget groupcategory({required IconData icon, required String text}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
           // height: 32,
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xFFEEEEEE),
            ),
            child: Row(children: [
              Icon(icon),
              Text(text,style: GoogleFonts.hankenGrotesk(fontSize: 12,color: Color(0xFF3C4A3D)),)
            ]),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 220,

        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFF006D33),
                ),
                child: const Icon(
                  Icons.account_balance_wallet,
                  color: Colors.white,
                ),
              ),

              const SizedBox(width: 10),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CashPay',
                    style: GoogleFonts.hankenGrotesk(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: const Color(0xFF1A1C1C),
                    ),
                  ),
                  Text(
                    'FINANCE',
                    style: GoogleFonts.hankenGrotesk(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      color: const Color(0xFF5E5E5E),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsGeometry.only(left: 20, right: 20),
            child: Column(
              children: [
                Container(
                  width: 350,
                  padding: EdgeInsets.only(top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xFFEEEEEE),
                        ),
                        child: Icon(Icons.arrow_back),
                      ),
                      Column(
                        children: [
                          Text(
                            'Create Payment Group',
                            style: GoogleFonts.hankenGrotesk(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1A1C1C),
                            ),
                          ),
                          Text(
                            'Split expenses & instant settlement',
                            style: GoogleFonts.hankenGrotesk(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF5E5E5E),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xFFEEEEEE),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '1',
                              style: GoogleFonts.hankenGrotesk(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF006D33),
                              ),
                            ),
                            Text(
                              '/2',
                              style: GoogleFonts.hankenGrotesk(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF5E5E5E),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 350,
                  padding: EdgeInsets.only(top: 24),
                  child: Container(
                    width: double.infinity,
                    height: 220,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Stack(
                        children: [
                          // Yellow glow at bottom-left
                          Positioned.fill(
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                gradient: RadialGradient(
                                  center: Alignment.bottomLeft,
                                  radius: 0.9,
                                  colors: [
                                    Color(0xFFFFEDB0),
                                    Color(0x00FFEDB0),
                                  ],
                                  stops: [0.0, 1.0],
                                ),
                              ),
                            ),
                          ),

                          // Green glow at top-right
                          Positioned.fill(
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                gradient: RadialGradient(
                                  center: Alignment.topRight,
                                  radius: 0.9,
                                  colors: [
                                    Color(0xFFD5F5D5),
                                    Color(0x00D5F5D5),
                                  ],
                                  stops: [0.0, 1.0],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 20,
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: 96,
                                        height: 96,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            12,
                                          ),
                                          color: Color(0xFF00D66B),
                                        ),
                                        child: Icon(Icons.group_work_outlined),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: Container(
                                          width: 32,
                                          height: 32,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                            color: Color(0xFF006D33),
                                          ),
                                          child: Icon(
                                            Icons.camera_alt,
                                            color: Colors.white,
                                            size: 15,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        Text(
                                          'Choose Group Icon or Emoji',
                                          style: GoogleFonts.hankenGrotesk(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF1A1C1C),
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: 32,
                                              height: 32,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                color: Color(0xFFEEEEEE),
                                              ),
                                              child: Icon(Icons.flight),
                                            ),
                                            Container(
                                              width: 32,
                                              height: 32,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                color: Color(0xFFEEEEEE),
                                              ),
                                              child: Icon(Icons.home_outlined),
                                            ),
                                            Container(
                                              width: 32,
                                              height: 32,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                color: Color(0xFFEEEEEE),
                                              ),
                                              child: Icon(
                                                Icons.celebration_outlined,
                                              ),
                                            ),
                                            Container(
                                              width: 32,
                                              height: 32,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                color: Color(0xFFEEEEEE),
                                              ),
                                              child: Icon(Icons.restaurant),
                                            ),
                                            Container(
                                              width: 32,
                                              height: 32,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                color: Color(0xFFEEEEEE),
                                              ),
                                              child: Icon(Icons.bolt_outlined),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 350,
                  padding: EdgeInsets.only(top: 25),
                  child: Column(
                    children: [
                      Container(
                        width: 350,
                        padding: EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 16,
                        ),
                        decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'GROUP NAME',
                              style: GoogleFonts.hankenGrotesk(
                                fontSize: 12,
                                color: Color(0xFF5E5E5E),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Container(
                              width: 318,
                              height: 52,
                              padding: EdgeInsets.only(
                                left: 44,
                                right: 16,
                                bottom: 10,
                                top: 10,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xFFF3F3F4),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.badge_outlined),
                              SizedBox(width: 5,),
                              Expanded(
                                child: Text(
                                  'NYC Trip 2024',
                                  style: GoogleFonts.hankenGrotesk(
                                    fontSize: 20,
                                    color: Color(0xFF5E5E5E),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              )
                                ],
                              ),
                            ),
                            SizedBox(height: 16),

                            Text(
                              'DESCRIPTION (OPTIONAL)',
                              style: GoogleFonts.hankenGrotesk(
                                fontSize: 12,
                                color: Color(0xFF5E5E5E),
                                fontWeight: FontWeight.w700,
                              ),
                            ),

                            Container(
                              width: 318,
                              height: 68,
                              padding: EdgeInsets.only(
                                left: 44,
                                right: 16,
                                bottom: 10,
                                top: 10,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xFFF3F3F4),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.description),
                                  SizedBox(width: 5,),
                                  Expanded(
                                    child: Text(
                                      'Shared rent, bills, groceries and \ndinners',
                                      style: GoogleFonts.hankenGrotesk(
                                        fontSize: 16,
                                        color: Color(0xFF5E5E5E),
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        width: 350,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'GROUP CATEGORY',
                              style: GoogleFonts.hankenGrotesk(
                                fontSize: 12,
                                color: Color(0xFF5E5E5E),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(child: groupcategory(icon: Icons.home_outlined, text: 'Household')),
                                SizedBox(width: 5,),
                                Expanded(child: groupcategory(icon: Icons.flight, text: 'Travel')),
                                SizedBox(width: 5,),

                                Expanded(child: groupcategory(icon: Icons.restaurant_outlined, text: ' Dining')),


                              ],
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
      ),
    );
  }
}
