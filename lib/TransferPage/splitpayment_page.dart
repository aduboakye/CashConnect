import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplitpaymentPage extends StatefulWidget {
  const SplitpaymentPage({super.key});

  @override
  State<SplitpaymentPage> createState() => _SplitpaymentPageState();
}

class _SplitpaymentPageState extends State<SplitpaymentPage> {
  List<String> amount = ['%5', '%10', '%15', '%20'];
  Widget subamount() {
    return Row(
      children: List.generate(amount.length, (index) {
        return Padding(
          padding: EdgeInsets.only(
            right: index == amount.length - 1 ? 0 : 10,
          ),
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: const Color(0xFFFFFFFF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Text(
              amount[index],
              style: GoogleFonts.hankenGrotesk(
                fontSize: 14,
                color: const Color(0xFF006D33),
              ),
            ),
          ),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 200,
        leading: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
              Text(
                'Split Bill',
                style: GoogleFonts.hankenGrotesk(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1A1C1C),
                ),
              ),
            ],
          ),
        ),
        actionsPadding: EdgeInsets.symmetric(horizontal: 20),
        actions: [
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              color: Color(0xFF006D33),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person_outline,
                  color: Color(0xFFFFFFFF),
                  size: 20,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  width: 350,
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: Color(0xFFF3F3F4),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.verified_user_outlined,
                              color: Color(0xFF006D33),
                            ),
                            Text(
                              'CashPay Instant Settlement • Zero Fees',
                              style: GoogleFonts.hankenGrotesk(
                                color: Color(0xFF3C4A3D),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xFF8DAF9D),
                        ),
                        child: Text(
                          'DIRECT',
                          style: GoogleFonts.jetBrainsMono(
                            color: Color(0xFF3C4A3D),
                            fontSize: 11,
                          ),
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  // width: 350,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xFFFFFFFF),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'PARTICIPANTS (2)',
                            style: GoogleFonts.hankenGrotesk(
                              color: Color(0xFF3C4A3D),
                              fontSize: 12,
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.person_add_alt,
                                  color: Color(0xFF006D33),
                                ),
                                Text(
                                  'Add People',
                                  style: GoogleFonts.hankenGrotesk(
                                    color: Color(0xFF006D33),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xFFF3F3F4),
                            ),
                            child: Row(
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                      child: Image.asset('images/border.png'),
                                      borderRadius:
                                          BorderRadiusGeometry.circular(8),
                                    ),
                                    Positioned(
                                      right: 0,
                                      bottom: 0,
                                      child: Container(
                                        height: 14,
                                        width: 14,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xFF006D33),
                                        ),
                                        child: Icon(
                                          Icons.check,
                                          color: Color(0xFFFFFFFF),
                                          size: 10,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'You (Payer)',
                                      style: GoogleFonts.hankenGrotesk(
                                        color: Color(0xFF1A1C1C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '@elena',
                                      style: GoogleFonts.hankenGrotesk(
                                        color: Color(0xFF3C4A3D),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 8),
                          Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.swap_horiz),
                          ),
                          SizedBox(width: 8),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xFFF3F3F4),
                            ),
                            child: Row(
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                      child: Image.asset('images/border.png'),
                                      borderRadius:
                                          BorderRadiusGeometry.circular(8),
                                    ),
                                    Positioned(
                                      right: 0,
                                      bottom: 0,
                                      child: Container(
                                        height: 14,
                                        width: 14,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xFF16E678),
                                        ),
                                        child: Icon(
                                          Icons.check,
                                          color: Color(0xFFFFFFFF),
                                          size: 10,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Sarah J.',
                                          style: GoogleFonts.hankenGrotesk(
                                            color: Color(0xFF1A1C1C),
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Container(
                                          height: 14,
                                          width: 14,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xFF006D33),
                                          ),
                                          child: Icon(
                                            Icons.check,
                                            color: Color(0xFFFFFFFF),
                                            size: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      '@sarahj',
                                      style: GoogleFonts.hankenGrotesk(
                                        color: Color(0xFF3C4A3D),
                                        fontSize: 12,
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
                SizedBox(height: 16),
                Container(
                  width: 350,
                  height: 245.5,
                  // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    //  color: Color(0xFF2F3131),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox(
                      width: 350,
                      //height: 180,
                      child: Stack(
                        children: [
                          // Main background color.
                          const Positioned.fill(
                            child: ColoredBox(color: Color(0xFF2F3131)),
                          ),

                          // Green glow at the top right.
                          const Positioned.fill(
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                gradient: RadialGradient(
                                  center: Alignment.topRight,
                                  radius: 0.5,
                                  colors: [
                                    Color(0xFF81B196),
                                    Color(0x00006D33),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          // Yellow glow at the bottom left.
                          const Positioned.fill(
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                gradient: RadialGradient(
                                  center: Alignment.bottomLeft,
                                  radius: 0.5,
                                  colors: [
                                    Color(0x99C6C4B1),
                                    Color(0x00FAE500),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 20,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'TOTAL BILL AMOUNT',
                                      style: GoogleFonts.hankenGrotesk(
                                        color: Color(0xFFF0F1F1),
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Text(
                                            'Edit Amount',
                                            style: GoogleFonts.hankenGrotesk(
                                              color: Color(0xFF63FF94),
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.edit,
                                              color: Color(0xFF63FF94),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                //SizedBox(height: 5),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.attach_money,
                                      size: 49,
                                      color: Color(0xFF63FF94),
                                    ),
                                    Expanded(
                                      child: TextField(
                                        keyboardType:
                                            const TextInputType.numberWithOptions(
                                              decimal: true,
                                            ),
                                        style: GoogleFonts.hankenGrotesk(
                                          fontSize: 49,
                                          color: const Color(0xFFF0F1F1),
                                        ),
                                        cursorColor: const Color(0xFFF0F1F1),
                                        decoration: InputDecoration(
                                          hintText: '0.00',
                                          hintStyle: GoogleFonts.hankenGrotesk(
                                            fontSize: 49,
                                            color: const Color(0xFFF0F1F1),
                                          ),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(
                                  height: 1,
                                  color: Color(0xFFF0F1F1),
                                  thickness: 1,
                                ),
                                SizedBox(height: 3),
                                Row(

                                  children: [
                                    Text(
                                      'Tip / Fee:',
                                      style: GoogleFonts.hankenGrotesk(
                                        color: Color(0xFFE2E2E2),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),

                                    Flexible(
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: [
                                            subamount(),
                                          ],
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
