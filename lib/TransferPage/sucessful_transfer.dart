import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SucessfulTransfer extends StatefulWidget {
  const SucessfulTransfer({super.key});

  @override
  State<SucessfulTransfer> createState() => _SucessfulTransferState();
}

class _SucessfulTransferState extends State<SucessfulTransfer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 64, horizontal: 20),
            child: Column(
              children: [
                Container(
                  width: 348,
                  padding: EdgeInsets.only(top: 48),
                  child: Column(
                    children: [
                      Container(
                        width: 128,
                        height: 128,
                        decoration: BoxDecoration(
                          color: Color(0xFF16E678),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: 53.33,
                            height: 53.33,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF006D33),
                            ),
                            child: Icon(
                              Icons.check,
                              color: Color(0xFFFFFFFF),
                              size: 37,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 24),
                      Text(
                        'Transfer Successful',
                        style: GoogleFonts.hankenGrotesk(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1A1C1C),
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        'Your funds are on the way.',
                        style: GoogleFonts.hankenGrotesk(
                          color: Color(0xFF3C4A3D),
                          fontSize: 16,
                        ),
                      ),
                      Container(
                        width: 348,
                        padding: EdgeInsets.only(top: 48),
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
                                  Text(
                                    'Amount Sent',
                                    style: GoogleFonts.hankenGrotesk(
                                      color: Color(0xFF3C4A3D),
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    r'$250.00',
                                    style: GoogleFonts.hankenGrotesk(
                                      color: Color(0xFF006D33),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
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
                                    'Recipient',
                                    style: GoogleFonts.hankenGrotesk(
                                      color: Color(0xFF3C4A3D),
                                      fontSize: 16,
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 26,
                                          height: 26,
                                          //padding: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                            color: Color(0xFFE2E2E2),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'SJ',
                                              style: GoogleFonts.hankenGrotesk(
                                                color: Color(0xFF646464),
                                                //fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          r'Sarah Jenkins',
                                          style: GoogleFonts.hankenGrotesk(
                                            color: Color(0xFF1A1C1C),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
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
                                    'Transaction ID',
                                    style: GoogleFonts.hankenGrotesk(
                                      color: Color(0xFF3C4A3D),
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    'TXN-98421-B',
                                    style: GoogleFonts.hankenGrotesk(
                                      color: Color(0xFF1A1C1C),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 348,
                  padding: EdgeInsets.only(top: 62),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(348, 60),
                      backgroundColor: Color(0xFFFAE500),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'Done',
                      style: GoogleFonts.hankenGrotesk(
                        fontSize: 20,
                        color: Color(0xFF1F1C00),
                      ),
                    ),
                  ),
                ),
                TextButton.icon(onPressed: (){},
                  icon: Icon(Icons.ios_share_outlined,color: Color(0xFF1A1C1C),),
                  label: Text(
                  'Share Receipt',
                  style: GoogleFonts.hankenGrotesk(
                    color: Color(0xFF1A1C1C),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
