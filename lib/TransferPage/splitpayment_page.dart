import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplitpaymentPage extends StatefulWidget {
  const SplitpaymentPage({super.key});

  @override
  State<SplitpaymentPage> createState() => _SplitpaymentPageState();
}

class _SplitpaymentPageState extends State<SplitpaymentPage> {
  bool isEnabled = true;
  final List<String> description = [
    'Dinner & Drinks',
    'Groceries',
    'Rideshare',
  ];

  int selecteddescription = 0;

  Widget descriptionanalysis() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(description.length, (index) {
        final bool isSelected = selecteddescription == index;

        return Padding(
          padding: EdgeInsets.only(
            right: index == description.length - 1 ? 0 : 8,
          ),
          child: TextButton(
            onPressed: () {
              setState(() {
                selecteddescription = index;
              });
            },
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              backgroundColor: isSelected
                  ? const Color(0xFFFFFFFF)
                  : const Color(0xFFEEEEEE),
              foregroundColor: isSelected
                  ? const Color(0xFF006D33)
                  : const Color(0xFF5E5E5E),
              side: BorderSide(
                color: isSelected
                    ? const Color(0xFF006D33)
                    : Colors.transparent,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              description[index],
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        );
      }),
    );
  }

  final List<String> paymentdecison = ['Equally', 'Exact', 'Share %', 'Items'];

  int selectedDecision = 0;

  Widget amountdecison() {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: const Color(0xFFEEEEEE),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: List.generate(paymentdecison.length, (index) {
          final bool isSelected = selectedDecision == index;

          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    selectedDecision = index;
                  });
                },
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  backgroundColor: isSelected
                      ? const Color(0xFFFFFFFF)
                      : const Color(0xFFEEEEEE),
                  foregroundColor: isSelected
                      ? const Color(0xFF006D33)
                      : const Color(0xFF5E5E5E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: Text(paymentdecison[index], textAlign: TextAlign.center),
              ),
            ),
          );
        }),
      ),
    );
  }

  List<String> amount = ['%5', '%10', '%15', '%20'];
  Widget subamount() {
    return Row(
      children: List.generate(amount.length, (index) {
        return Padding(
          padding: EdgeInsets.only(right: index == amount.length - 1 ? 0 : 10),
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
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),

                                    Flexible(
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(children: [subamount()]),
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
                SizedBox(height: 16),
                Container(
                  width: 350,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
                            'SPLIT METHOD',
                            style: GoogleFonts.hankenGrotesk(
                              fontSize: 12,
                              color: Color(0xFF3C4A3D),
                            ),
                          ),
                          Text(
                            'Split evenly 50/50',
                            style: GoogleFonts.jetBrainsMono(
                              fontSize: 12,
                              color: Color(0xFF006D33),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: amountdecison(),
                      ),
                      SizedBox(height: 12),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFF3F3F4),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              child: Row(
                                children: [
                                  Container(
                                    width: 36,
                                    height: 36,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Color(0xFFEEEEEE),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'You',
                                        style: GoogleFonts.hankenGrotesk(
                                          color: Color(0xFF1A1C1C),
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Your portion',
                                        style: GoogleFonts.hankenGrotesk(
                                          color: Color(0xFF1A1C1C),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '50.0% of final',
                                        style: GoogleFonts.jetBrainsMono(
                                          color: Color(0xFF5E5E5E),
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '\$75.81',
                                  style: GoogleFonts.jetBrainsMono(
                                    color: Color(0xFF1A1C1C),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Paid by card',
                                  style: GoogleFonts.hankenGrotesk(
                                    color: Color(0xFF5E5E5E),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFC6EADC),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              child: Row(
                                children: [
                                  Container(
                                    width: 36,
                                    height: 36,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Color(0xFF006D33),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'SJ',
                                        style: GoogleFonts.hankenGrotesk(
                                          color: Color(0xFFFFFFFF),
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Your portion',
                                        style: GoogleFonts.hankenGrotesk(
                                          color: Color(0xFF1A1C1C),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'To be requested',
                                        style: GoogleFonts.jetBrainsMono(
                                          color: Color(0xFF006D33),
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '\$75.81',
                                  style: GoogleFonts.jetBrainsMono(
                                    color: Color(0xFF006D33),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Immediate push',
                                  style: GoogleFonts.hankenGrotesk(
                                    color: Color(0xFF006D33),
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
                ),
                SizedBox(height: 16),
                Container(
                  width: 350,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'EXPENSE DETAILS',
                        style: GoogleFonts.hankenGrotesk(
                          color: Color(0xFF3C4A3D),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 12),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: descriptionanalysis(),
                      ),
                      SizedBox(height: 12),
                      SizedBox(
                        width: 318,
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.edit_note),
                            hintText: 'Dinner at Nobu Downtown',
                            hintStyle: GoogleFonts.hankenGrotesk(
                              color: Color(0xFF1A1C1C),
                              fontSize: 14,
                            ),
                            filled: true,
                            fillColor: const Color(0xFFF3F3F4),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          Container(
                            width: 36,
                            height: 36,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color(0xFF006D33),
                            ),
                            child: Text(
                              'SJ',
                              style: GoogleFonts.hankenGrotesk(
                                color: const Color(0xFFFFFFFF),
                                fontSize: 12,
                              ),
                            ),
                          ),

                          const SizedBox(width: 10),

                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Instant Request Push',
                                  style: GoogleFonts.hankenGrotesk(
                                    color: const Color(0xFF1A1C1C),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Sends Sarah prompt via CashPay & SMS',
                                  style: GoogleFonts.jetBrainsMono(
                                    color: const Color(0xFF3C4A3D),
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(width: 8),

                          Switch(
                            value: isEnabled,
                            activeTrackColor: const Color(0xFF006D33),
                            activeThumbColor: Colors.white,
                            inactiveTrackColor: const Color(0xFFEEEEEE),
                            inactiveThumbColor: Colors.white,
                            onChanged: (bool newValue) {
                              setState(() {
                                isEnabled = newValue;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 26),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFAE500),
                    fixedSize: Size(350, 56),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.send, size: 16, color: Color(0xFF1F1C00)),
SizedBox(width: 8,),
                      Text(
                        "Request \$75.81 from Sarah",
                        style: GoogleFonts.hankenGrotesk(
                          fontSize: 16,
                          color: Color(0xFF1F1C00),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 8,),

                      Icon(
                        Icons.arrow_forward,
                        size: 16,
                        color: Color(0xFF1F1C00),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                TextButton(onPressed: (){}, child: Text(
                  "Save Draft & Edit Later",
                  style: GoogleFonts.hankenGrotesk(
                    fontSize: 14,
                    color: Color(0xFF5E5E5E),
                    //fontWeight: FontWeight.bold,
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
