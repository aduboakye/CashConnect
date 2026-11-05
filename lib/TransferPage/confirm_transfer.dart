import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmTransfer extends StatelessWidget {
  const ConfirmTransfer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, color: Color(0xFF006D33)),
        ),
        title: Text(
          'Confirm Transfer',
          style: GoogleFonts.hankenGrotesk(
            color: Color(0xFF1A1C1C),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsGeometry.only(left: 20, right: 20, top: 48),
            child: Column(
              children: [
                Container(
                  width: 350,
                  padding: EdgeInsets.symmetric(vertical: 24, horizontal: 64),
                  child: Column(
                    children: [
                      Text(
                        'AMOUNT TO TRANSFER',
                        style: GoogleFonts.hankenGrotesk(
                          color: Color(0xFF3C4A3D),
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        r'$250.00',
                        style: GoogleFonts.hankenGrotesk(
                          color: Color(0xFF1A1C1C),
                          fontSize: 48,
                          fontWeight: FontWeight.bold
                        ),
                      ),

                    ],
                  ),
                ),
                Container(
                  width: 348,
                  padding: EdgeInsets.only(bottom: 64),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 24,
                      horizontal: 24,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFE2E2E2)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Recipient',
                                  style: GoogleFonts.hankenGrotesk(
                                    color: Color(0xFF3C4A3D),
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  r'Sarah Jenkins (@sarahj)',
                                  style: GoogleFonts.hankenGrotesk(
                                    color: Color(0xFF006D33),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            ClipRRect(
                              borderRadius: BorderRadiusGeometry.circular(12),
                              child: Image.asset('images/border.png',width: 40,height: 40,),
                            )
                          ],
                        ),
                        SizedBox(height: 12),
                        Divider(height: 2, thickness: 2),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Transfer Fee',
                              style: GoogleFonts.hankenGrotesk(
                                color: Color(0xFF3C4A3D),
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              r'$0.00 (Free)',
                              style: GoogleFonts.hankenGrotesk(
                                color: Color(0xFF006D33),
                                fontSize: 16,
                                  fontWeight: FontWeight.bold

                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 12),
                        Divider(height: 2, thickness: 2),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Estimated Arrival',
                              style: GoogleFonts.hankenGrotesk(
                                color: Color(0xFF3C4A3D),
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              'Instant',
                              style: GoogleFonts.hankenGrotesk(
                                color: Color(0xFF1A1C1C),
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 12),
                        Divider(height: 2, thickness: 2),
                        SizedBox(height: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Funding Source',
                              style: GoogleFonts.hankenGrotesk(
                                color: Color(0xFF3C4A3D),
                                fontSize: 12,
                              ),
                            ),
                            Row(

                              children: [
                                Icon(Icons.account_balance,color: Color(0xFF1A1C1C),),
                                Text(
                                  'Bank Account (****6789)',
                                  style: GoogleFonts.hankenGrotesk(
                                    color: Color(0xFF1A1C1C),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ),
                Container(
                  width: 348,
                  padding: const EdgeInsets.only(top: 62),
                  child: Column(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(348, 60),
                          backgroundColor: const Color(0xFFFAE500),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        iconAlignment: IconAlignment.end,
                        icon: const Icon(
                          Icons.check_circle_outline,
                          size: 20,
                          color: Color(0xFF1A1C1C),
                        ),
                        label: Text(
                          'Confirm Transfer',
                          style: GoogleFonts.hankenGrotesk(
                            fontSize: 20,
                            color: const Color(0xFF1F1C00),
                              fontWeight: FontWeight.bold

                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12),

                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(348, 60),
                    backgroundColor: const Color(0xFFFFFFFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  iconAlignment: IconAlignment.end,

                  icon: const Icon(
                    Icons.close_outlined,
                    color: Color(0xFF1A1C1C),
                    size: 20,

                  ),
                  label: Text(
                    'Cancel',
                    style: GoogleFonts.hankenGrotesk(
                      fontSize: 20,
                      color: const Color(0xFF1F1C00),
                      fontWeight: FontWeight.bold
                    ),
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
