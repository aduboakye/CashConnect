import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List<String> textamountdecision = ['Equal Split', 'Custom Amounts'];
List<String> amount = [r'+$50', '+\$100', '+\$250', 'Clear'];
Widget amountselection() {
  return Wrap(
    spacing: 8,
    children: List.generate(amount.length, (index) {
      return TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: amount[index] == 'Clear'
              ? Color(0xFFBF8085)
              : Color(0xFFEEEEEE),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        child: Text(
          amount[index],
          style: GoogleFonts.jetBrainsMono(
            color: amount[index] == 'Clear'
                ? Color(0xFF93000A)
                : Color(0xFF1A1C1C),
            fontSize: 14,
          ),
        ),
      );
    }),
  );
}

final List<IconData> iconamountdecision = [Icons.balance, Icons.tune];

class MultipleSplitpayment extends StatefulWidget {
  const MultipleSplitpayment({super.key});

  @override
  State<MultipleSplitpayment> createState() => _MultipleSplitpaymentState();
}

class _MultipleSplitpaymentState extends State<MultipleSplitpayment> {
  int selecteddecision = 0;
  Widget amountrdecision() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(textamountdecision.length, (index) {
        final bool isSelected = selecteddecision == index;

        return TextButton.icon(
          onPressed: () {
            setState(() {
              selecteddecision = index;
            });
          },
          style: TextButton.styleFrom(
            fixedSize: Size(170.5, 32),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            backgroundColor: isSelected ? Color(0xFF2F3131) : Color(0xFFE8E8E8),
          ),
          icon: Icon(
            iconamountdecision[index],
            color: isSelected ? Color(0xFF63FF94) : Color(0xFF3C4A3D),
          ),
          label: Text(
            textamountdecision[index],
            style: GoogleFonts.hankenGrotesk(
              color: isSelected ? Color(0xFFF0F1F1) : Color(0xFF3C4A3D),
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
        leadingWidth: 350,
        leading: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back, color: Color(0xFF1A1C1C)),
            ),
            Text(
              'Split Evenly / Batch Amount',
              style: GoogleFonts.hankenGrotesk(
                color: Color(0xFF1A1C1C),
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        actionsPadding: EdgeInsets.symmetric(horizontal: 20),
        actions: [
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: Color(0xFF006D33),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(Icons.person_outline, color: Color(0xFFFFFFFF)),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                  decoration: BoxDecoration(color: Color(0xFFE8E8E8)),
                  child: amountrdecision(),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 24),
                  child: SizedBox(
                    width: double.infinity,

                    // height: 200,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),

                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: ColoredBox(color: Color(0xFFFFFFFF)),
                          ),
                          Positioned.fill(
                            top: 0,
                            right: 0,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                gradient: RadialGradient(
                                  radius: 0.8,
                                  center: Alignment.topRight,
                                  stops: [0.0, 1.0],
                                  colors: [
                                    Color(0xFF7EDDBF),
                                    Color(0x007EDDBF),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          Positioned.fill(
                            bottom: 0,
                            left: 0,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                gradient: RadialGradient(
                                  radius: 0.8,
                                  center: Alignment.bottomLeft,
                                  stops: [0.0, 1.0],
                                  colors: [
                                    Color(0xFFFFEDB0),
                                    Color(0x00FFEDB0),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 24,
                              horizontal: 24,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'TOTAL BATCH AMOUNT',
                                      style: GoogleFonts.hankenGrotesk(
                                        color: Color(0xFF3C4A3D),
                                        fontSize: 12,
                                      ),
                                    ),

                                    TextButton(
                                      onPressed: () {},
                                      style: TextButton.styleFrom(
                                        tapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        backgroundColor: Color(0xFF8DAF9D),
                                        fixedSize: const Size(75, 20),
                                        minimumSize: Size.zero,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 3,
                                          vertical: 2,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            Icons.bolt_outlined,
                                            color: Color(0xFF006D33),
                                          ),
                                          Text(
                                            'Instant',
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
                                SizedBox(
                                  width: 190,
                                  child: TextField(
                                    textAlign: TextAlign.start,
                                    textAlignVertical: TextAlignVertical.center,
                                    style: GoogleFonts.hankenGrotesk(
                                      color: Color(0xFF1A1C1C),
                                      fontSize: 48,
                                      fontWeight: FontWeight.w900,
                                    ),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      prefixIcon: Icon(
                                        Icons.attach_money,
                                        size: 40,
                                        color: Color(0xFF3C4A3D),
                                      ),
                                      hintText: '0.00',

                                      hintStyle: GoogleFonts.hankenGrotesk(
                                        color: Color(0xFF1A1C1C),
                                        fontSize: 48,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEEEEEE),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.verified_outlined,
                                        color: Color(0xFF006D33),
                                        size: 15,
                                      ),
                                      SizedBox(width: 5),
                                      Expanded(
                                        child: Text(
                                          'Zero Platform Fee • Peer-to-Peer Settlement',
                                          style: GoogleFonts.hankenGrotesk(
                                            color: Color(0xFF3C4A3D),
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: amountselection(),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xFFFFFFFF),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 32,
                                width: 32,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Color(0xFF29E376),
                                ),
                                child: Icon(
                                  Icons.group_outlined,
                                  color: Color(0xFF005225),
                                ),
                              ),
                              Text(
                                'Split Breakdown',
                                style: GoogleFonts.hankenGrotesk(
                                  color: Color(0xFF1A1C1C),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 82.64,
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xFFEEEEEE),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  '3',
                                  style: GoogleFonts.hankenGrotesk(
                                    color: Color(0xFF006D33),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(width: 2),
                                Text(
                                  'Recipients',
                                  style: GoogleFonts.hankenGrotesk(
                                    color: Color(0xFF3C4A3D),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 12,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color(0xFF6EAE8B),
                              Color(0xFFFFFFFF),
                            ],
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Each person owes',
                                  style: GoogleFonts.hankenGrotesk(
                                    color: Color(0xFF3C4A3D),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  '\$200.00',
                                  style: GoogleFonts.hankenGrotesk(
                                    color: Color(0xFF006D33),
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(width: 96, height: 20,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE2E2E2),
                                    shape: BoxShape.rectangle
                                  ),
                                  child:  Center(
                                    child: Text(
                                      'Exact Match',
                                      style: GoogleFonts.hankenGrotesk(
                                        color: Color(0xFF1B1B1B),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),

                                Text(
                                  '0¢ remainder',
                                  style: GoogleFonts.hankenGrotesk(
                                    color: Color(0xFF6C7B6C),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
