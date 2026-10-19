import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CashpayDashboard extends StatefulWidget {
  const CashpayDashboard({super.key});

  @override
  State<CashpayDashboard> createState() => _CashpayDashboardState();
}

class _CashpayDashboardState extends State<CashpayDashboard> {
  Widget textbutton({required String text, required IconData icon}) {
    return TextButton.icon(
      style: TextButton.styleFrom(
        backgroundColor: Color(0xFFEEEEEE),
        padding: EdgeInsets.symmetric(vertical: 4,horizontal: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12)
        )
      ),
      onPressed: () {},
      label: Text(text,style: GoogleFonts.hankenGrotesk(fontSize: 11,color: Color(0xFF1A1C1C)),),
      icon: Icon(icon,color: Color(0xFF006D33),),
    );
  }

  Widget _actionButton() {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.arrow_upward, size: 18),
      style: IconButton.styleFrom(
        backgroundColor: const Color(0xFF00D66B),
        foregroundColor: Colors.white,
        minimumSize: const Size(32, 32), // smaller than the default 48
        padding: EdgeInsets.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

  final List<double> analysis = [18, 98, 45, 33, 93, 75, 3];
  final List<String> days = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
  final List<Color> colors = [
    Color(0xFF006D33),
    Color(0xFFCDBC00),
    Color(0xFFE2E2E2),
  ];

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

  int selected = 0;
  Widget history({
    required String title,
    required String subtitle,
    required String amount,
    required IconData icon,
    Color color = Colors.black45,
  }) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(10),
              ),

              child: Icon(icon, color: color),
            ),

            const SizedBox(width: 12),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: const TextStyle(fontSize: 11, color: Colors.grey),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 8),

            Text(
              amount,
              style: TextStyle(
                fontSize: 13,
                color: color,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'CashPay',
                style: TextStyle(
                  color: Color(0xFF006D33),
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 20),
              IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
              SizedBox(width: 2),
              CircleAvatar(
                child: IconButton(onPressed: () {}, icon: Icon(Icons.person)),
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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 12),
                Center(
                  child: Container(
                    width: 320,
                    height: 174,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 20,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total Balance',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                            Icon(
                              Icons.account_balance_wallet,
                              size: 24,
                              color: Colors.white,
                            ),
                          ],
                        ),

                        const Center(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              '\$124,569.00',
                              style: TextStyle(
                                fontSize: 48,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),

                        const Row(
                          children: [
                            Icon(
                              Icons.trending_up,
                              size: 14,
                              color: Color(0xFF006D33),
                            ),
                            SizedBox(width: 2),
                            Text(
                              '2.4% this week',
                              style: TextStyle(color: Color(0xFF006D33)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 90,
                      height: 90.4,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF3F3F4),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 40,
                            height: 46.4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.green,
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.add),
                            ),
                          ),
                          SizedBox(height: 4),
                          const Text(
                            'Desposit',
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 90,
                      height: 90.4,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF3F3F4),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 40,
                            height: 46.4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color(0xFFE2E2E2),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.swap_horiz),
                            ),
                          ),
                          SizedBox(height: 4),
                          const Text(
                            'Transfer',
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 90,
                      height: 90.4,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF3F3F4),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 40,
                            height: 46.4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color(0xFFCDBC00),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.savings),
                            ),
                          ),
                          SizedBox(height: 4),
                          const Text(
                            'Save',
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                Container(
                  width: 350,
                  //height: 258.13,
                  padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                TextButton.icon(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    backgroundColor: Color(0xFF00D66B),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusGeometry.circular(12),
                                    ),
                                  ),
                                  icon: Icon(Icons.auto_awesome),
                                  label: Text(
                                    'CashPay AI',
                                    style: GoogleFonts.hankenGrotesk(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF006D33),
                                    ),
                                  ),
                                ),
                                TextButton.icon(
                                  onPressed: () {},

                                  icon: Icon(
                                    Icons.circle,
                                    color: Color(0xFF00D66B),
                                  ),
                                  label: Text(
                                    'Active',
                                    style: GoogleFonts.hankenGrotesk(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF006D33),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(onPressed: () {}, icon: Icon(Icons.tune)),
                        ],
                      ),
                      SizedBox(height: 12),
                      Container(
                        width: 298.5,
                        //height: 77.63,
                        padding: EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 12,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color(0xFFF3F3F4),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Icon(
                                Icons.insights,
                                color: Color(0xFF006D33),
                              ),
                            ),
                            SizedBox(width: 2),
                            Expanded(
                              child: Text.rich(
                                TextSpan(
                                  style: const TextStyle(
                                    fontSize: 13,
                                    color: Colors.black87,
                                    height: 1.4, // line spacing
                                  ),
                                  children: [
                                    const TextSpan(
                                      text: 'Smart Spend Insight: ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const TextSpan(text: 'You have '),
                                    const TextSpan(
                                      text: '\$320',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Colors.redAccent, // money going out
                                      ),
                                    ),
                                    const TextSpan(
                                      text:
                                          ' in recurring subscriptions due this week. ',
                                    ),
                                    const TextSpan(
                                      text: 'Projected month-end surplus is ',
                                    ),
                                    const TextSpan(
                                      text: '\$1,850',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green, // money saved
                                      ),
                                    ),
                                    const TextSpan(text: '.'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                isDense: true,
                                filled: true, // needed for fillColor to show
                                fillColor: const Color(0xFFF3F3F4),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Image.asset(
                                    'images/Margin.png',
                                    width: 50, // was 16 (and the empty value)
                                    height: 24,
                                    fit: BoxFit
                                        .contain, // keeps it from stretching
                                  ),
                                ),
                                prefixIconConstraints: const BoxConstraints(
                                  minWidth: 32,
                                  minHeight: 32,
                                ),
                                hintText: 'Ask AI',
                                hintStyle: GoogleFonts.hankenGrotesk(
                                  color: const Color(0xFF3C4A3D),
                                  fontSize: 12,
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 6,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          _actionButton(),
                          const SizedBox(width: 4),
                          _actionButton(),
                        ],
                      ),
                      SizedBox(height: 12,),
                      SizedBox(
                        height: 40,   // required: set this to your button's height
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          children: [
                            textbutton(text: 'Audit Subscriptions', icon: Icons.checklist),
                            const SizedBox(width: 8),
                            textbutton(text: 'Audit Subscriptions', icon: Icons.checklist),
                            const SizedBox(width: 8),
                            textbutton(text: 'Audit Subscriptions', icon: Icons.checklist),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),
                Center(
                  child: Container(
                    width: 320,
                    //height: 184,
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF3F3F4),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Weekly Expenses',
                              style: TextStyle(fontSize: 20),
                            ),
                            const Text(
                              '\$1,240.50',
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                        SizedBox(height: 24),

                        //SizedBox(height: 24,),
                        SizedBox(
                          width: double.infinity,
                          // height: 96,
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  width: 28.81,
                                  height: 19,
                                  padding: EdgeInsets.symmetric(
                                    vertical: 2,
                                    horizontal: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                    color: Color(0xFF1A1C1C),
                                  ),
                                  child: FittedBox(
                                    child: Text(
                                      'Wed',
                                      style: GoogleFonts.hankenGrotesk(
                                        fontSize: 15,
                                        color: Color(0xFFF9F9F9),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: List.generate(analysis.length, (
                                  index,
                                ) {
                                  return Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                      ),
                                      child: Container(
                                        height: analysis[index],
                                        decoration: BoxDecoration(
                                          color: index == 3
                                              ? Colors.amber
                                              : Colors.green,
                                          borderRadius: BorderRadius.circular(
                                            5,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 2),
                        Row(
                          children: List.generate(days.length, (index) {
                            return Expanded(
                              child: Padding(
                                padding: EdgeInsetsGeometry.symmetric(
                                  horizontal: 5,
                                ),
                                child: Center(
                                  child: Text(
                                    days[index],
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Center(
                  child: Container(
                    width: 320,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF3F3F4),
                      borderRadius: BorderRadius.circular(8),
                    ),

                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Recent Activity',
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black45,
                              ),
                            ),
                            SizedBox(width: 8),
                            Text(
                              'See All',
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 12),
                        history(
                          icon: Icons.computer,
                          title: 'Dell',
                          subtitle: 'Oct 24, 2023',
                          amount: r'-$1,299.00',
                        ),
                        SizedBox(height: 2),
                        history(
                          icon: Icons.airplanemode_active,
                          title: 'JFK',
                          subtitle: 'Oct 24, 2023',
                          amount: r'-$1,299.00',
                        ),
                        SizedBox(height: 2),
                        history(
                          icon: Icons.apple,
                          title: 'Apple Store',
                          subtitle: 'Oct 24, 2023',
                          amount: r'-$1,299.00',
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
    );
  }
}
