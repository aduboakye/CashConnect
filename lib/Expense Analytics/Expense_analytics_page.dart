import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ExpenseAnalyticsPage extends StatefulWidget {
  const ExpenseAnalyticsPage({super.key});

  @override
  State<ExpenseAnalyticsPage> createState() => _ExpenseAnalyticsPageState();
}

class _ExpenseAnalyticsPageState extends State<ExpenseAnalyticsPage> {
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
  Widget _recentHistory({
    required String title,
    required String subtitle,
    required String amount,
    required IconData icon,
    Color color = const Color(0xFF006D33),
    Color color1 = const Color(0xFF121212),
  }) {
    return Card.outlined(
      child: ListTile(
        leading: Icon(icon, color: color),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Text(amount, style: TextStyle(color: color1)),
      ),
    );
  }

  Widget chartLabel({required String text, required Color color}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),

        SizedBox(width: 8),

        Text(text, style: TextStyle(fontSize: 14)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: 390,
          height: 73,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 220,
                height: 40,
                child: Row(
                  children: [
                    Image.asset("images/Border-2.png"),
                    SizedBox(width: 8),
                    Text(
                      'CashPay',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF006D33),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(Icons.notifications, size: 20),
                  ),
                  const SizedBox(width: 14),
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(Icons.receipt_long, size: 20),
                  ),
                ],
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
        padding: EdgeInsets.only(bottom: 1),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  width: 390,
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 24,
                    bottom: 12,
                  ),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Analytics',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        width: 350,
                        height: 201,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: RadialGradient(
                            center: Alignment.topRight,
                            radius: 1.2,
                            stops: [0.0, 1.0],
                            colors: [
                              Color(0xFF14532D), // Dark green
                              Color(0xFF121212),
                            ],
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 24,
                          horizontal: 24,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total Spend (This Month)',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFFE2E2E2),
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  r'$4,250.00',
                                  style: TextStyle(
                                    fontSize: 36,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFE2E2E2),
                                  ),
                                ),
                                SizedBox(width: 4),
                                TextButton.icon(
                                  onPressed: () {},

                                  style: TextButton.styleFrom(
                                    backgroundColor: Color(0xFFFFDAD6),
                                    foregroundColor: Color(0xFF93000A),

                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  icon: Icon(Icons.trending_up, size: 18),
                                  label: Text(
                                    '23%',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Divider(
                              height: 2,
                              thickness: 1,
                              color: Colors.grey,
                            ),
                            SizedBox(height: 8),
                            Container(
                              width: 302,
                              //padding: EdgeInsets.only(bottom: 0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Income',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFFE2E2E2),
                                        ),
                                      ),
                                      Text(
                                        'Savings Rate',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFFE2E2E2),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        r'$8,500.00',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xFF63FF94),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '50%',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xFFE2E2E2),
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
                SizedBox(height: 12),
                Container(
                  width: 350,
                  height: 402,
                  padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Spending by Category',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        width: 300,
                        height: 300,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              width: 220,
                              height: 220,
                              child: PieChart(
                                PieChartData(
                                  centerSpaceRadius: 70,
                                  sectionsSpace: 2,
                                  sections: [
                                    PieChartSectionData(
                                      value: 45,
                                      color: Color(0xFF00C853),
                                      radius: 35,
                                      showTitle: false,
                                    ),
                                    PieChartSectionData(
                                      value: 30,
                                      color: Color(0xFF66BB6A),
                                      radius: 35,
                                      showTitle: false,
                                    ),
                                    PieChartSectionData(
                                      value: 15,
                                      color: Color(0xFFFFD600),
                                      radius: 35,
                                      showTitle: false,
                                    ),
                                    PieChartSectionData(
                                      value: 10,
                                      color: Color(0xFFE0E0E0),
                                      radius: 35,
                                      showTitle: false,
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            const SizedBox(height: 16),

                            Row(
                              children: [
                                Expanded(
                                  child: chartLabel(
                                    text: 'Housing',
                                    color: Color(0xFF00C853),
                                  ),
                                ),
                                Expanded(
                                  child: chartLabel(
                                    text: 'Food',
                                    color: Color(0xFF66BB6A),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            Row(
                              children: [
                                Expanded(
                                  child: chartLabel(
                                    text: 'Transport',
                                    color: Color(0xFFFFD600),
                                  ),
                                ),
                                Expanded(
                                  child: chartLabel(
                                    text: 'Other',
                                    color: Color(0xFFE0E0E0),
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
                SizedBox(height: 12),
                Container(
                  width: 390,
                  height: 365,
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Recent Transactions',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color(0xFF1A1C1C),
                            ),
                          ),
                          Text(
                            'See All',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Color(0xFF006D33),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      Container(
                        width: 350,
                        height: 40,
                        child: Row(
                          children: [
                            Container(
                              width: 312,
                              height: 40,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search...',
                                  prefixIcon: const Icon(Icons.search),
                                  filled: true,
                                  fillColor: Color(0xFFF3F3F4),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 4),
                            Container(
                              width: 34,
                              height: 36,
                              padding: EdgeInsets.only(
                                left: 8,
                                right: 8,
                                top: 8,
                                bottom: 16,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xFFF3F3F4),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Center(
                                child: Icon(Icons.filter_list, size: 20),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12),
                      _recentHistory(
                        title: 'Whole Foods',
                        subtitle: 'Groceries • Today',
                        amount: r'-$145.20',
                        icon: Icons.shopping_cart,
                      ),
                      _recentHistory(
                        title: 'Rent Payment',
                        subtitle: 'Housing • Yesterday',
                        amount: r'-$145.20',
                        icon: Icons.home,
                        color: Colors.grey,
                      ),
                      _recentHistory(
                        title: 'Salary Deposit',
                        subtitle: 'Income • Oct 01',
                        amount: r'+$145.20',
                        color: Colors.green,
                        icon: Icons.payments_rounded,
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
