import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustommultiplePayment extends StatefulWidget {
  const CustommultiplePayment({super.key});

  @override
  State<CustommultiplePayment> createState() => _CustommultiplePaymentState();
}

class _CustommultiplePaymentState extends State<CustommultiplePayment> {
  List<Color> customColor = [
    Color(0xFF00D66B),
    Color(0xFF7EDDBF),
    Color(0xFFFAE500),
  ];
  Widget caspayreceivers({
    required String image,
    required String titlename,
    required String subname,
    required IconData icon,
    required IconData nameicon,

    required String amount,
    required String text,
    required Color statusColor,
    Color color = const Color(0xFF006D33),
    bool changecolor = false,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadiusGeometry.circular(8),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Stack(
                children: [
                  Image.asset(image),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Icon(Icons.circle, color: statusColor, size: 14),
                  ),
                ],
              ),
            ),
            title: Row(
              children: [
                Text(
                  titlename,
                  style: GoogleFonts.hankenGrotesk(
                    color: Color(0xFF1A1C1C),
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                Icon(nameicon, color: Color(0xFF006D33), size: 15),
              ],
            ),
            subtitle: Text(
              subname,
              style: GoogleFonts.jetBrainsMono(
                color: Color(0xFF3C4A3D),
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
            ),
            trailing: Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                color: Color(0xFFE8E8E8),
                borderRadius: BorderRadiusGeometry.circular(12),
              ),
              child: Icon(icon,   color: changecolor ? color : Color(0xFF646464)),
            ),
          ),

          SizedBox(height: 12),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Color(0xFFF3F3F4),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          minimumSize: Size.zero,
                          backgroundColor: statusColor,
                          shape: RoundedRectangleBorder(),
                        ),
                        child: Text(
                          text,
                          style: GoogleFonts.jetBrainsMono(
                            color: Color(0xFF3C4A3D),
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(width: 3),
                      Text(
                        'share',
                        style: GoogleFonts.jetBrainsMono(
                          color: Color(0xFF3C4A3D),
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 200,
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Color(0xFFFFFFFF),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
                        SizedBox(width: 10),
                        Text(
                          amount,
                          style: GoogleFonts.jetBrainsMono(
                            color: Color(0xFF3C4A3D),
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(width: 10),

                        IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  final List<IconData> iconamountdecision = [
    Icons.attach_money,
    Icons.percent_outlined,
    Icons.pie_chart_outline,
  ];
  List<String> spiltdecision = [r'Amount ($)', 'Percent (%)', 'Shares (x)'];
  int spilt = 0;
  Widget spiltamount() {
    return Row(
      children: List.generate(spiltdecision.length, (index) {
        final bool selected = spilt == index;

        return Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              right: index == spiltdecision.length - 1 ? 0 : 8,
            ),
            child: TextButton.icon(
              onPressed: () {
                setState(() {
                  spilt = index;
                });
              },
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                minimumSize: Size.zero,
                backgroundColor: selected
                    ? const Color(0xFF006D33)
                    : const Color(0xFFE8E8E8),
                foregroundColor: selected
                    ? const Color(0xFFFFFFFF)
                    : const Color(0xFF3C4A3D),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              icon: Icon(iconamountdecision[index], size: 16),
              label: Text(
                spiltdecision[index],
                style: GoogleFonts.hankenGrotesk(fontSize: 12),
              ),
            ),
          ),
        );
      }),
    );
  }

  List<String> textamountdecision = ['Equal Split', 'Custom Amounts'];
  final List<IconData> iconamount = [Icons.balance, Icons.tune];

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
            backgroundColor: isSelected ? Color(0xFFFFFFFF) : Color(0xFFE8E8E8),
          ),
          icon: Icon(
            iconamount[index],
            color: isSelected ? Color(0xFF63FF94) : Color(0xFF3C4A3D),
          ),
          label: Text(
            textamountdecision[index],
            style: GoogleFonts.hankenGrotesk(
              color: isSelected ? Color(0xFF1A1C1C) : Color(0xFF3C4A3D),
              fontWeight: FontWeight.bold,
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
        toolbarHeight: 80,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.arrow_back, color: Color(0xFF1A1C1C)),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Custom Split Amounts',
                    style: GoogleFonts.hankenGrotesk(
                      color: Color(0xFF1A1C1C),
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton.icon(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          visualDensity: VisualDensity(
                            horizontal: -4,
                            vertical: -4,
                          ),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          padding: EdgeInsets.zero,
                        ),
                        icon: Icon(
                          Icons.lock_outline,
                          color: Color(0xFF006D33),
                        ),
                        label: Text(
                          '256-bit',
                          style: GoogleFonts.jetBrainsMono(
                            color: Color(0xFF3C4A3D),
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Icon(Icons.circle, color: Color(0xFFBBCBB9), size: 8),
                      SizedBox(width: 4),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: const Color(0xFF63FF94),
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          shape: RoundedRectangleBorder(),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 2,
                          ),
                        ),
                        child: const Text('Zero Fee'),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                  decoration: BoxDecoration(color: Color(0xFFE8E8E8)),
                  child: amountrdecision(),
                ),
                SizedBox(height: 20),
                Container(
                  // height: 200,
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: RadialGradient(
                      center: Alignment.topRight,
                      radius: 1.0,
                      stops: [0.0, 1.0],
                      colors: [Color(0xFF88C198), Color(0xFF2F3131)],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          /*Expanded(
                            child: TextButton.icon(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                backgroundColor: Color(0x4DE2E2E2),
                                shape: RoundedRectangleBorder(),
                              ),
                              label: Text(
                                'Custom Allocation\nMode',
                                textAlign: TextAlign.start,
                                style: GoogleFonts.jetBrainsMono(
                                  color: const Color(0xFF63FF94),
                                  fontSize: 12,
                                ),
                              ),
                              icon: Icon(
                                Icons.circle,
                                color: Color(0xFFBBCBB9),
                                size: 10,
                              ),
                            ),
                          ),*/
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xFF2C4535),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color(0xFF63FF94),
                                  size: 10,
                                ),
                                SizedBox(width: 6),
                                Text(
                                  'Custom Allocation\nMode',
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.jetBrainsMono(
                                    color: const Color(0xFF63FF94),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 12), // Space between buttons.

                          Expanded(
                            child: TextButton.icon(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                backgroundColor: Color(0x4DE2E2E2),
                                shape: RoundedRectangleBorder(),
                              ),
                              label: Text(
                                'Instant Settlement',
                                style: GoogleFonts.jetBrainsMono(
                                  color: Color(0xFF63FF94),
                                  fontSize: 12,
                                ),
                              ),
                              icon: Icon(
                                Icons.bolt_outlined,
                                color: Color(0xFF63FF94),
                                //size: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      Text(
                        'TOTAL POOL REQUIRED',
                        style: GoogleFonts.hankenGrotesk(
                          color: Color(0xFFF0F1F1),
                          fontSize: 12,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$600.00',
                            style: GoogleFonts.hankenGrotesk(
                              color: Color(0xFFFFFFFF),
                              fontSize: 48,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: Color(0xFF2C4535),
                              minimumSize: Size.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              shape: RoundedRectangleBorder(),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 2,
                              ),
                            ),
                            child: Text(
                              'USD',
                              style: GoogleFonts.hankenGrotesk(
                                color: Color(0xFF63FF94),
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.check_circle_outline_outlined,
                                  color: Color(0xFF63FF94),
                                  size: 20,
                                ),
                                SizedBox(width: 6),
                                Text(
                                  'Allocated: \$600.00 of\n\$600.00',
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.jetBrainsMono(
                                    color: const Color(0xFF63FF94),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            '100%\nmatched',
                            textAlign: TextAlign.start,
                            style: GoogleFonts.jetBrainsMono(
                              color: const Color(0xFF63FF94),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 3),

                      Row(
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 6,
                              height: 4,
                              color: Color(0xFF63FF94),
                              radius: BorderRadiusGeometry.circular(2),
                            ),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Divider(
                              thickness: 6,
                              height: 4,
                              color: Color(0xFF63FF94),
                              radius: BorderRadiusGeometry.circular(2),
                            ),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Divider(
                              thickness: 6,
                              height: 4,
                              color: Color(0xFFFAE500),
                              radius: BorderRadiusGeometry.circular(2),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 3),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Remainder: \$0.00 unallocated',
                            textAlign: TextAlign.start,
                            style: GoogleFonts.jetBrainsMono(
                              color: const Color(0xFFF0F1F1),
                              fontSize: 12,
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.lock_outline,
                                  color: Color(0xFF63FF94),
                                  size: 20,
                                ),
                                SizedBox(width: 6),
                                Text(
                                  'Pool Locked',
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.jetBrainsMono(
                                    color: const Color(0xFF63FF94),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'ALLOCATION METRIC',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.hankenGrotesk(
                        color: const Color(0xFF3C4A3D),
                        fontSize: 12,
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.auto_fix_high,
                            color: Color(0xFF006D33),
                            size: 10,
                          ),
                          SizedBox(width: 3),
                          Text(
                            'Auto-Balance Remainder',
                            textAlign: TextAlign.start,
                            style: GoogleFonts.jetBrainsMono(
                              color: const Color(0xFF006D33),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                spiltamount(),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Text(
                            'Recipients',
                            textAlign: TextAlign.start,
                            style: GoogleFonts.hankenGrotesk(
                              color: const Color(0xFF1A1C1C),
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Container(
                            width: 32,
                            height: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFE2E2E2),
                            ),
                            child: Center(
                              child: Text(
                                '3',

                                style: GoogleFonts.jetBrainsMono(
                                  color: const Color(0xFF3C4A3D),
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Total: \$600.00',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.jetBrainsMono(
                        color: const Color(0xFF3C4A3D),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
SizedBox(height: 12,),
                caspayreceivers(
                  image: 'images/border.png',
                  titlename: 'Sarah Jenkins',
                  subname: '@sarahj • Split Dinner & Drinks',
                  icon: Icons.lock_outline,
                  amount: '\$200',
                  statusColor: customColor[0],
                  text: '41.7%',
                  nameicon: Icons.verified,
                    changecolor : true

                ),
                SizedBox(height: 12,),
                caspayreceivers(
                  image: 'images/border.png',
                  titlename: 'Michael Chen',
                  subname: '@mchen • Groceries Reimbursement',
                  icon: Icons.lock_open_outlined,
                  amount: '\$200',
                  statusColor: customColor[1],
                  text: '33.3%',
                  nameicon: Icons.account_balance_wallet,
                ),
                SizedBox(height: 12,),
                caspayreceivers(
                  image: 'images/border.png',
                  titlename: 'Elena Rodriguez',
                  subname: '@elena_r • Utilities & WiFi',
                  icon: Icons.lock_open_outlined,
                  amount: '\$150',
                  statusColor: customColor[2],
                  text: '25.0%',
                  nameicon: Icons.account_balance_wallet,
                ),
                SizedBox(height: 12,),
                Container(
                  height: 60,
                  padding: EdgeInsets.symmetric(vertical: 16,horizontal: 16),
                  decoration: BoxDecoration(
                    color: Color(0xFFF3F3F4),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Container(
                       height: 32,
                       width: 35,
                       decoration: BoxDecoration(
                         color: Color(0xFFE8E8E8),
                         borderRadius: BorderRadiusGeometry.circular(12),
                       ),
                       child: Icon(Icons.add),
                     ),
                     SizedBox(width: 3,),
                     Text(
                       'Add Another Person to Split',
                       textAlign: TextAlign.start,
                       style: GoogleFonts.hankenGrotesk(
                         color: const Color(0xFF1A1C1C),
                         fontSize: 16,
                         fontWeight: FontWeight.w700
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
