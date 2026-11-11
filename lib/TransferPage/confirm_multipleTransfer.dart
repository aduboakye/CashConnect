import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmMultipletransfer extends StatelessWidget {
  Widget receivedmembers({
    required String name,
    required String subname,

    required String description,
    required String subdescription,

    required String amount,
    required String profile,
    required String subtitledescription,
    required IconData icon,
    required IconData subicon,
  }) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            //SizedBox(height: 8),
            Row(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        profile,
                        width: 48,
                        height: 48,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF006D33),
                        ),
                        child: Icon(
                          subicon,
                          size: 15,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text(
                              name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.hankenGrotesk(
                                color: const Color(0xFF1A1C1C),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            amount,
                            style: GoogleFonts.hankenGrotesk(
                              color: const Color(0xFF1A1C1C),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text(
                              subname,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.hankenGrotesk(
                                color: const Color(0xFF5E5E5E),
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            subdescription,
                            style: GoogleFonts.hankenGrotesk(
                              color: const Color(0xFF006D33),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            Container(
              height: 40,
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
                bottom: 10,
                top: 14,
              ),
              decoration: BoxDecoration(
                color: Color(0xFFF3F3F4),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(icon, color: Color(0xFF5E5E5E)),
                        Text(
                          description,
                          style: GoogleFonts.hankenGrotesk(
                            color: Color(0xFF5E5E5E),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    subtitledescription,
                    style: GoogleFonts.jetBrainsMono(
                      color: Color(0xFF3C4A3D),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  const ConfirmMultipletransfer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: Color(0xFF006D33),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  Icons.account_balance_wallet,
                  color: Color(0xFFFFFFFF),
                  size: 15.83,
                ),
              ),
              SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Cash',
                        style: GoogleFonts.hankenGrotesk(
                          fontSize: 20,
                          color: Color(0xFF006D33),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Pay',
                        style: GoogleFonts.hankenGrotesk(
                          fontSize: 20,
                          color: Color(0xFF1A1C1C),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'FINANCE',
                    style: GoogleFonts.hankenGrotesk(
                      fontSize: 10,
                      color: Color(0xFF5E5E5E),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        leadingWidth: 200,
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.update, color: Color(0xFF3C4A3D)),
              ),
              Stack(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications, color: Color(0xFF3C4A3D)),
                  ),
                  Positioned(
                    top: 5,
                    right: 9,
                    child: Icon(
                      Icons.circle,
                      color: Color(0xFF006D33),
                      size: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 120,
          padding: EdgeInsets.only(right: 16, left: 16, top: 16),
          decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(350, 56),
                  backgroundColor: const Color(0xFFFAE500),
                  foregroundColor: const Color(0xFF1F1C00),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.touch_app_outlined, size: 20),
                    const SizedBox(width: 8),
                    Flexible(
                      child: Text(
                        r'Confirm & Send $355.00',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.hankenGrotesk(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Icon(Icons.arrow_forward, size: 20),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.fingerprint, color: Color(0xFF006D33)),
                    label: Text(
                      'Touch ID / Face ID authorized',
                      style: GoogleFonts.hankenGrotesk(
                        fontSize: 11,
                        color: Color(0xFF3C4A3D),
                      ),
                    ),
                  ),
                  Text(
                    'Cancel transfer',
                    style: GoogleFonts.hankenGrotesk(
                      fontSize: 11,
                      color: Color(0xFF3C4A3D),
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
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFFEEEEEE),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back),
                        color: Color(0xFF1A1C1C),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          'Review & Confirm',
                          style: GoogleFonts.hankenGrotesk(
                            color: Color(0xFF1A1C1C),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'Step 3 of 3 • Batch Send',
                          style: GoogleFonts.hankenGrotesk(
                            color: Color(0xFF5E5E5E),
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFFEEEEEE),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.verified_user,
                          color: Color(0xFF006D33),
                        ),
                        color: Color(0xFF1A1C1C),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 12, bottom: 24),
                  child: Container(
                    width: 350,
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                    decoration: BoxDecoration(
                      //color: Color(0xFF2F3131),
                      gradient: RadialGradient(
                        center: Alignment.bottomLeft,
                        radius: 1.2,
                        stops: [0.0, 1.0],
                        colors: [Color(0xFF005627), Color(0xFF2F3131)],
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.groups, color: Color(0xFF63FF94)),
                            Text(
                              'BATCH DISPATCH TOTAL',
                              style: GoogleFonts.hankenGrotesk(
                                color: Color(0xFF63FF94),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Icon(Icons.attach_money, color: Color(0xFFFFFFFF),size: 48,),
                            Text(
                              '\$355.00',
                              style: GoogleFonts.hankenGrotesk(
                                color: Color(0xFFFFFFFF),
                                fontSize: 48,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'USD',
                              style: GoogleFonts.jetBrainsMono(
                                color: Color(0xFFC6C6C6),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Splitting across 3 confirmed recipients',
                          style: GoogleFonts.hankenGrotesk(
                            color: Color(0xFFC6C6C6),
                            fontSize: 16,
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: const Color(0x4DE2E2E2),
                                ),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.circle,
                                      color: Color(0xFF63FF94),
                                      size: 15,
                                    ),
                                    const SizedBox(width: 4),
                                    Expanded(
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          '⚡ Instant Settlement',
                                          style: GoogleFonts.hankenGrotesk(
                                            color: const Color(0xFFC6C6C6),
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: const Color(0xFF00D66B),
                                ),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.check_circle_outline,
                                      color: Color(0xFF005627),
                                      size: 15,
                                    ),
                                    const SizedBox(width: 4),
                                    Expanded(
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'Zero Platform Fee',
                                          style: GoogleFonts.hankenGrotesk(
                                            color: const Color(0xFF005627),
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 24),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'FUNDING SOURCE',
                              style: GoogleFonts.hankenGrotesk(
                                color: const Color(0xFF5E5E5E),
                                fontSize: 12,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color(0xFFABC1B7),
                              ),
                              child: Text(
                                'Ready to Debit',
                                style: GoogleFonts.hankenGrotesk(
                                  color: const Color(0xFF006D33),
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 12),
                        Row(
                          children: [
                            Container(
                              width: 48,
                              height: 48,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xFF2F3131),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.account_balance,
                                  color: Color(0xFF00D66B),
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Text(
                                          'Main Checking',
                                          style: GoogleFonts.hankenGrotesk(
                                            color: Color(0xFF1A1C1C),
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 50),
                                      Text(
                                        '\$4,250.00',
                                        style: GoogleFonts.jetBrainsMono(
                                          color: Color(0xFF1A1C1C),
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Text(
                                          'Account •••• 4921',
                                          style: GoogleFonts.hankenGrotesk(
                                            color: Color(0xFF5E5E5E),
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 50),
                                      Text(
                                        'Available balance',
                                        style: GoogleFonts.hankenGrotesk(
                                          color: Color(0xFF5E5E5E),
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 12),
                        Container(
                          height: 40,
                          padding: EdgeInsets.only(
                            left: 10,
                            right: 10,
                            bottom: 10,
                            top: 14,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFF3F3F4),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.bolt_outlined,
                                      color: Color(0xFF006D33),
                                    ),
                                    Text(
                                      'Speed: CashPay FastNetwork',
                                      style: GoogleFonts.hankenGrotesk(
                                        color: Color(0xFF5E5E5E),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                'Immediate',
                                style: GoogleFonts.jetBrainsMono(
                                  color: Color(0xFF006D33),
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Container(
                            child: Row(
                              children: [
                                Text(
                                  'Recipients',
                                  style: GoogleFonts.hankenGrotesk(
                                    color: Color(0xFF1A1C1C),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFFE2E2E2),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '3',
                                      style: GoogleFonts.hankenGrotesk(
                                        color: Color(0xFF5E5E5E),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          TextButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.edit, color: Color(0xFF006D33)),
                            label: Text(
                              'Edit Split',
                              style: GoogleFonts.hankenGrotesk(
                                color: Color(0xFF006D33),
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                      //SizedBox(height: 5),
                      receivedmembers(
                        name: 'Michael Chen',
                        subname: '@mchen',
                        description: 'CashPay Direct',
                        subdescription: 'Instant ACH',
                        amount: '\$120.00',
                        profile: 'images/border.png',
                        subtitledescription: 'Routing •••• 8219',
                        icon: Icons.restaurant_outlined,
                        subicon: Icons.sync_alt,
                      ),
                      //SizedBox(height: 5),
                      receivedmembers(
                        name: 'Sarah Jenkins',
                        subname: '@sarahj',
                        description: 'Groceries',
                        subdescription: 'Instant ACH',
                        amount: '\$120.00',
                        profile: 'images/border.png',
                        subtitledescription: 'Est. 0.2s',
                        icon: Icons.shopping_cart,
                        subicon: Icons.bolt_outlined,
                      ),
                      receivedmembers(
                        name: 'Elena Rodriguez',
                        subname: '@elena_r',
                        description: 'Utilities',
                        subdescription: 'CashPay Wallet',
                        amount: '\$120.00',
                        profile: 'images/border.png',
                        subtitledescription: 'Auto-deposited',
                        icon: Icons.bolt,
                        subicon: Icons.payments_rounded,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 24),
                  child: Container(
                    width: 350,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'LEDGER IMPACT',
                          style: GoogleFonts.hankenGrotesk(
                            color: Color(0xFF5E5E5E),
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Subtotal (3 payouts)',
                              style: GoogleFonts.hankenGrotesk(
                                color: Color(0xFF5E5E5E),
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              '\$355.00',
                              style: GoogleFonts.hankenGrotesk(
                                color: Color(0xFF5E5E5E),
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Text(
                                    'CashPay Dispatch Fee',
                                    style: GoogleFonts.hankenGrotesk(
                                      color: Color(0xFF5E5E5E),
                                      fontSize: 16,
                                    ),
                                  ),
                                  Icon(
                                    Icons.info_outline,
                                    color: Color(0xFF5E5E5E),
                                    size: 15,
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              '\$0.00 (Free)',
                              style: GoogleFonts.hankenGrotesk(
                                color: Color(0xFF006D33),
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Divider(height: 2, thickness: 1),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total Deducted',
                              style: GoogleFonts.hankenGrotesk(
                                color: Color(0xFF1A1C1C),
                                fontSize: 18,
                              ),
                            ),

                            Text(
                              '\$355.00',
                              style: GoogleFonts.hankenGrotesk(
                                color: Color(0xFF1A1C1C),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            //
                          ],
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 40,
                          padding: EdgeInsets.only(
                            left: 10,
                            right: 10,
                            bottom: 10,
                            top: 14,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFF3F3F4),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Remaining Checking Balance',
                                style: GoogleFonts.hankenGrotesk(
                                  color: Color(0xFF5E5E5E),
                                  fontSize: 14,
                                ),
                              ),

                              Text(
                                '\$3,895.00',
                                style: GoogleFonts.jetBrainsMono(
                                  color: Color(0xFF006D33),
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFFF3F3F4),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: const Color(0xFF8DAF9D),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(
                          Icons.lock_outline,
                          color: Color(0xFF006D33),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Protected Transaction',
                              style: GoogleFonts.hankenGrotesk(
                                color: const Color(0xFF1A1C1C),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Covered by CashPay Vault Guarantee & FDIC-insured '
                                  'partner bank. Because instant settlement initiates '
                                  'immediately, this batch transfer cannot be stopped '
                                  'once approved.',
                              style: GoogleFonts.hankenGrotesk(
                                color: const Color(0xFF5E5E5E),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
