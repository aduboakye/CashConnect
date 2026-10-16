import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoanAndCredit extends StatefulWidget {
  const LoanAndCredit({super.key});

  @override
  State<LoanAndCredit> createState() => _LoanAndCreditState();
}

class _LoanAndCreditState extends State<LoanAndCredit> {
  final List<Color> colors = [Color(0xFF006D33),  Color(0xFFCDBC00), Color(0xFFE2E2E2),];
  int selected = 0;

  Widget navicon({required IconData icon, required int index}) {
    return Container(
      width: 56,
      height: 38.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colors[index],
      ),
      child: Icon(icon, color: Colors.black),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: 392,
          height: 92,
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 215.8,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.payments_rounded, color: Color(0xFF006D33)),
                    FittedBox(
                      child: Text(
                        'CashPay',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF006D33),
                          fontSize: 48,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Icon(Icons.notifications, color: Color(0xFF006D33)),
              ),
              GestureDetector(
                onTap: () {},
                child: Image.asset("images/Button.png"),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected,

        type: BottomNavigationBarType.fixed,

        onTap: (index) {
          setState(() {
            selected = index;
          });
        },
        unselectedItemColor: Colors.black54,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Home',
            activeIcon: navicon(icon: Icons.dashboard, index: 0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.swap_horiz),
            label: 'Transfer',
            activeIcon: navicon(icon: Icons.swap_horiz, index: 2),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.savings),
            label: 'savings',
            activeIcon: navicon(icon: Icons.savings, index: 1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payments_rounded),
            label: 'Expenses',
            activeIcon: navicon(icon: Icons.payments_rounded, index: 1),
          ),

        ],
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.only(left: 20, right: 20, top: 24),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,

              children: [
                Container(
                  width: 350,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Your Credit Health',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF1A1C1C),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 12),
                      Container(
                        width: 350,
                        //height: 189,
                        padding: EdgeInsets.symmetric(
                          vertical: 24,
                          horizontal: 24,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),

                          gradient: RadialGradient(
                            center: Alignment.topRight,
                            radius: 1.2,
                            // stops: ,
                            colors: [Color(0xFF14532D), Color(0xFF1A1C1C)],
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'FICO SCORE 8',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF646464),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,

                              children: [
                                const Text(
                                  '750',
                                  style: TextStyle(
                                    fontSize: 48,
                                    color: Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 12),
                                const Text(
                                  'Excellent',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xFF63FF94),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),
                            Divider(height: 1, thickness: 2),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [
                                TextButton.icon(
                                  onPressed: () {},
                                  label: Text(
                                    '+15 pts this month',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFFE2E2E2),
                                    ),
                                  ),
                                  icon: Icon(
                                    Icons.trending_up,
                                    color: Color(0xFF63FF94),
                                  ),
                                ),
                                // const Text('Details',style: TextStyle(fontSize: 16, color: Color(0xFFFFFFFF),)),
                                SizedBox(width: 8),
                                TextButton.icon(
                                  onPressed: () {},
                                  iconAlignment: IconAlignment.end,
                                  label: Text(
                                    'Details',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Color(0xFFFFFFFF),
                                    size: 10,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 48,),
                      Container(
                        width: 350,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pre-Approved Offer',
                              style: GoogleFonts.hankenGrotesk(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 12),
                            Container(
                              width: 350,
                              //height: 214,
                              padding: EdgeInsets.symmetric(
                                vertical: 24,
                                horizontal: 24,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                                // border: Border.
                                color: Color(0xFFBBC8C1),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextButton(
                                        onPressed: () {},
                                        style: TextButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              2,
                                            ),
                                          ),
                                          backgroundColor: Color(0xFF00D66B),
                                        ),
                                        child: Text(
                                          'Premium',
                                          style: GoogleFonts.hankenGrotesk(
                                            fontSize: 12,
                                            color: Color(0xFF005627),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        style: IconButton.styleFrom(
                                          backgroundColor: Color(0xFFEEEEEE),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                          ),
                                        ),
                                        icon: Icon(
                                          Icons.account_balance_wallet,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'Personal Loan',
                                    style: GoogleFonts.hankenGrotesk(
                                      fontSize: 24,
                                      color: Color(0xFF1A1C1C),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Consolidate debt instantly',
                                    style: GoogleFonts.hankenGrotesk(
                                      fontSize: 16,
                                      color: Color(0xFF3C4A3D),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 348,
                              height: 172,
                              color: Colors.white,
                              padding: EdgeInsets.symmetric(
                                vertical: 24,
                                horizontal: 24,
                              ),

                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Up to',
                                        style: GoogleFonts.jetBrainsMono(
                                          fontSize: 14,
                                          color: Color(0xFF1A1C1C),
                                        ),
                                      ),
                                      Text(
                                        'APR From',
                                        style: GoogleFonts.jetBrainsMono(
                                          fontSize: 14,
                                          color: Color(0xFF3C4A3D),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        r'$35,000',
                                        style: GoogleFonts.hankenGrotesk(
                                          fontSize: 20,
                                          color: Color(0xFF1A1C1C),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '6.99%',
                                        style: GoogleFonts.hankenGrotesk(
                                          fontSize: 14,
                                          color: Color(0xFF3C4A3D),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 16),
                                  TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      fixedSize: Size(
                                        300,
                                        52,
                                      ), // Width = 350, Height = 50

                                      backgroundColor: Color(0xFFFAE500),
                                      padding: EdgeInsets.symmetric(
                                        vertical: 12,
                                      ),

                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                    child: Text(
                                      'Accept Offer',
                                      style: GoogleFonts.hankenGrotesk(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 24),
                      Container(
                        width: 350,
                        //height: 313,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Explore Marketplace',
                                  style: GoogleFonts.hankenGrotesk(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF1A1C1C),
                                  ),
                                ),
                                Text(
                                  'Sell All',
                                  style: GoogleFonts.hankenGrotesk(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF006D33),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 350,
                              //height: 134,
                              padding: EdgeInsets.symmetric(
                                vertical: 24,
                                horizontal: 24,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xFFF3F3F4),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextButton.icon(
                                    onPressed: () {},
                                    icon: Icon(Icons.storefront),
                                    label: Text(
                                      'BUSINESS',
                                      style: GoogleFonts.hankenGrotesk(
                                        fontSize: 12,
                                        color: Color(0xFF3C4A3D),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Small Business Fund',
                                        style: GoogleFonts.hankenGrotesk(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF1A1C1C),
                                        ),
                                      ),
                                      Icon(Icons.arrow_forward),
                                    ],
                                  ),
                                  SizedBox(height: 1),
                                  Text(
                                    'Scale your operations',
                                    style: GoogleFonts.hankenGrotesk(
                                      fontSize: 14,
                                      color: Color(0xFF3C4A3D),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 167,
                                  //height: 123,
                                  padding: EdgeInsets.symmetric(
                                    vertical: 12,
                                    horizontal: 12,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(width: 1),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        style: IconButton.styleFrom(
                                          backgroundColor: Color(0xFFE2E2E2),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                          ),
                                        ),
                                        icon: Icon(Icons.directions_car),
                                      ),
                                      SizedBox(height: 8),
                                      FittedBox(
                                        child: Text(
                                          'Auto Refinance',
                                          style: GoogleFonts.hankenGrotesk(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF1A1C1C),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      FittedBox(
                                        child: Text(
                                          'Lower your rate',
                                          style: GoogleFonts.hankenGrotesk(
                                            fontSize: 12,
                                            color: Color(0xFF3C4A3D),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 167,
                                  //height: 123,
                                  padding: EdgeInsets.symmetric(
                                    vertical: 12,
                                    horizontal: 12,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(width: 1),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        style: IconButton.styleFrom(
                                          backgroundColor: Color(0xFFCDBC00),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                          ),
                                        ),
                                        icon: Icon(Icons.star),
                                      ),
                                      SizedBox(height: 8),
                                      FittedBox(
                                        child: Text(
                                          'Rewards Elite',
                                          style: GoogleFonts.hankenGrotesk(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF1A1C1C),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      FittedBox(
                                        child: Text(
                                          'Premium credit card',
                                          style: GoogleFonts.hankenGrotesk(
                                            fontSize: 12,
                                            color: Color(0xFF3C4A3D),
                                          ),
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
