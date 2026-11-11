import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CompleteMultipletransfer extends StatefulWidget {
  const CompleteMultipletransfer({super.key});

  @override
  State<CompleteMultipletransfer> createState() =>
      _CompleteMultipletransferState();
}

class _CompleteMultipletransferState extends State<CompleteMultipletransfer> {
  Widget receivedmembers({
    required String name,
    required String description,
    required String amount,
    required String profile,
    Color? color,
  }) {
    return Container(
      width: 316,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xFFEDECEC),
      ),
      child: ListTile(
        leading: Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          child: Center(child: Text(profile)),
        ),
        title: Text(
          name,
          style: GoogleFonts.hankenGrotesk(
            fontSize: 12,
            color: Color(0xFF262626),
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          description,
          style: GoogleFonts.hankenGrotesk(
            fontSize: 11,
            color: Color(0xFF737373),
            //fontWeight: FontWeight.bold,
          ),
        ),
        trailing: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              amount,
              style: GoogleFonts.hankenGrotesk(
                fontSize: 12,
                color: Color(0xFF171717),
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min, // Add this line.

              children: [
                Icon(
                  Icons.check_circle_outline_outlined,
                  color: Color(0xFF059669),
                ),
                Text(
                  'Paid',
                  style: GoogleFonts.hankenGrotesk(
                    fontSize: 10,
                    color: Color(0xFF059669),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: Color(0xFFC6EADC),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  Icons.account_balance_wallet,
                  size: 15,
                  color: Color(0xFF00A852),
                ),
              ),
              Text(
                'CashPay Dispatch',
                style: GoogleFonts.hankenGrotesk(
                  fontSize: 14,
                  color: Color(0xFF262626),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        leadingWidth: 210,
        actionsPadding: EdgeInsets.symmetric(horizontal: 20),
        actions: [
          CircleAvatar(
            backgroundColor: Color(0xFFFFFFFF),
            child: Icon(Icons.close),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(right: 20, left: 20, top: 8),
            child: Column(
              children: [
                Center(
                  child: Container(
                    width: 100,
                    height: 85.87,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF00D66B),
                    ),
                    child: Icon(Icons.check, size: 30),
                  ),
                ),
                SizedBox(height: 2,),
                Container(

                  child: Column(
                    children: [
                      Container(
                        width: 258.94,
                        height: 30,
                        padding: EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 12,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFA7F3D0),
                          borderRadius: BorderRadius.circular(9999),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.bolt_outlined, color: Color(0xFF009B4D)),
                            Text(
                              'INSTANT SETTLEMENT COMPLETE',
                              style: GoogleFonts.hankenGrotesk(
                                fontSize: 12,
                                color: Color(0xFF009B4D),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Transfer Complete!',
                        style: GoogleFonts.hankenGrotesk(
                          fontSize: 30,
                          color: Color(0xFF171717),
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                      ),
                      Text(
                        'Total amount debited from your checking',
                        style: GoogleFonts.hankenGrotesk(
                          fontSize: 14,
                          color: Color(0xFF737373),
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 350,
                  padding: EdgeInsets.only(top: 20),
                  child: Container(
                    width: 350,
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      gradient: RadialGradient(
                        radius: 1.2,
                        stops: [0.0, 1.0],
                        center: Alignment.topRight,
                        colors: [Color(0xFF00D66B), Color(0xFF262626)],
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Icon(Icons.circle, color: Color(0xFF00D66B)),
                                  Text(
                                    'Debit Settled',
                                    style: GoogleFonts.hankenGrotesk(
                                      color: Color(0xFFA3A3A3),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              'TXN #CP-89420',
                              style: GoogleFonts.jetBrainsMono(
                                fontSize: 12,
                                color: Color(0xFFD4D4D4),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '\$355.00',
                              style: GoogleFonts.hankenGrotesk(
                                color: Color(0xFFFFFFFF),
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'USD',
                              style: GoogleFonts.hankenGrotesk(
                                color: Color(0xFFA3A3A3),
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Split across 3 confirmed recipients',
                          style: GoogleFonts.hankenGrotesk(
                            color: Color(0xFF34D399),
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(height: 4),
                        Divider(
                          thickness: 1,
                          height: 1,
                          color: Color(0xFFA3A3A3),
                        ),
                        SizedBox(height: 12),
                        Row(
                          children: [
                            Container(
                              width: 148,
                              height: 72,
                              padding: EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 10,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(color: Color(0xFF8F8F8F)),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    'Funding Source',
                                    style: GoogleFonts.hankenGrotesk(
                                      color: Color(0xFFA3A3A3),
                                      fontSize: 11,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.account_balance,
                                        color: Color(0xFF00D66B),
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Main Checking(••4921)',
                                          style: GoogleFonts.hankenGrotesk(
                                            color: Color(0xFFDF5F5F5),
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 12),
                            Container(
                              width: 148,
                              height: 72,
                              padding: EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 10,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(color: Color(0xFF8F8F8F)),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    'Platform Fee',
                                    style: GoogleFonts.hankenGrotesk(
                                      color: Color(0xFFA3A3A3),
                                      fontSize: 11,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.verified_outlined,
                                        color: Color(0xFF00D66B),
                                      ),
                                      Expanded(
                                        child: Text(
                                          '\$0.00 (Zero Fee)',
                                          style: GoogleFonts.hankenGrotesk(
                                            color: Color(0xFF00D66B),
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'DISPATCHED TO',
                            style: GoogleFonts.hankenGrotesk(
                              fontSize: 12,
                              color: Color(0xFFA3A3A3),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(color: Color(0xFFECFDF5)),
                            child: Text(
                              '3 Delivered',
                              style: GoogleFonts.hankenGrotesk(
                                fontSize: 12,
                                color: Color(0xFFA3A3A3),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),

                      receivedmembers(
                        name: 'Sarah Jenkins',
                        description: 'Split Dinner • Instant',
                        amount: '\$120.00',
                        profile: 'SJ',
                        color: Color(0xFFD1FAE5),
                      ),
                      SizedBox(height: 10),
                      receivedmembers(
                        name: 'Michael Chen',
                        description: 'Groceries • Instant ACH',
                        amount: '\$120.00',
                        profile: 'MC',
                        color: Color(0xFFDBEAFE),
                      ),
                      SizedBox(height: 10),
                      receivedmembers(
                        name: 'Elena Rodriguez',
                        description: 'Utilities • CashPay Wallet',
                        amount: '\$120.00',
                        profile: 'ER',
                        color: Color(0xFFFEF3C7),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
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
                        //iconAlignment: IconAlignment.end,
                        icon: const Icon(
                          Icons.share,
                          size: 20,
                          color: Color(0xFF1A1C1C),
                        ),
                        label: Text(
                          'Share Receipt',
                          style: GoogleFonts.hankenGrotesk(
                            fontSize: 20,
                            color: const Color(0xFF1F1C00),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.download_outlined,
                              size: 20,
                              color: Color(0xFF1A1C1C),
                            ),
                            label: Text(
                              'Download PDF',
                              style: GoogleFonts.hankenGrotesk(
                                fontSize: 12,
                                color: const Color(0xFF737373),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.repeat,
                              size: 20,
                              color: Color(0xFF1A1C1C),
                            ),
                            label: Text(
                              'Set Recurring',
                              style: GoogleFonts.hankenGrotesk(
                                fontSize: 12,
                                color: const Color(0xFF737373),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12,),
                      ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(348, 60),
                          backgroundColor: const Color(0xFFFFFFFF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        //iconAlignment: IconAlignment.end,
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 20,
                          color: Color(0xFF1A1C1C),
                        ),
                        label: Text(
                          'Back to Dashboard',
                          style: GoogleFonts.hankenGrotesk(
                            fontSize: 20,
                            color: const Color(0xFF1F1C00),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 12,),
                      TextButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.lock,color: Color(0xFF006D33),),
                        label: Text(
                          '256-bit Encrypted • FDIC-Insured Partner Bank',
                          style: GoogleFonts.hankenGrotesk(
                            fontSize: 11,
                            color: Color(0xFFA3A3A3),
                          ),
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
