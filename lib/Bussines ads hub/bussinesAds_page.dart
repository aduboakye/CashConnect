
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BussinesadsPage extends StatefulWidget {
  const BussinesadsPage({super.key});

  @override
  State<BussinesadsPage> createState() => _BussinesadsPageState();
}

class Story {
  final String image;
  final String title;
  final bool isLive;

  const Story({required this.image, required this.title, required this.isLive});
}

class _BussinesadsPageState extends State<BussinesadsPage> {
  final List<Color> colors = [Color(0xFF006D33),  Color(0xFFCDBC00), Color(0xFFE2E2E2),];

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
  final List<Story> stories = [
    Story(
      image: 'images/Story Card 1-3.png',
      title: 'Q3 Growth Tactics',
      isLive: true,
    ),
    Story(
      image: 'images/Story Card 1-3.png',
      title: 'Saving Tips',
      isLive: false,
    ),
    Story(
      image: 'images/Story Card 1-3.png',
      title: 'Business Ideas',
      isLive: true,
    ),
    Story(
      image: 'images/Story Card 1-3.png',
      title: 'Business Ideas',
      isLive: true,
    ),
    Story(
      image: 'images/Story Card 1-3.png',
      title: 'Business Ideas',
      isLive: true,
    ),
  ];

  Widget _story() {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: stories.length,
        itemBuilder: (context, index) {
          final item = stories[index];

          return Padding(
            padding: const EdgeInsets.all(3),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: SizedBox(
                width: 80,
                height: 120,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(item.image, fit: BoxFit.cover),
                    ),
                    Positioned(
                      left: 6,
                      right: 6,
                      bottom: 6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          FittedBox(
                            child: Text(
                              item.title,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 4),
                          GestureDetector(
                            onTap: () {},
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  size: 8,
                                  color: item.isLive
                                      ? Colors.greenAccent
                                      : Colors.grey,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  item.isLive ? 'Live' : 'Ended',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
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
          );
        },
      ),
    );
  }

  Widget BussineDescription({
    required String title,
    required String subtitle,
    required String amount,
    required String textbutton,
    required String image,
    Color? color,

    Color? textcolor,
  }) {
    return Container(
      width: 350,
      height: 112,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset(image, width: 64, height: 80, fit: BoxFit.cover),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,

                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        backgroundColor:color ?? Colors.lightGreenAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      child: Text(
                          textbutton, style:  TextStyle(fontSize: 11,color: textcolor?? Colors.black )),
                    ),
                    Text(
                      amount,
                      style: GoogleFonts.jetBrainsMono(
                        fontSize: 12,
                        color: const Color(0xFF1A1C1C),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                Text(
                  title,
                  maxLines: 1, // stop wrapping
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  maxLines: 1, // stop wrapping
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: 390,
          height: 81,
          padding: EdgeInsetsGeometry.symmetric(vertical: 16, horizontal: 20),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Text(
                "CashPay",
                style: GoogleFonts.hankenGrotesk(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF006D33),
                ),
              ),
              Container(
                width: 160,
                height: 48,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.notifications),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.receipt_long),
                    ),
                    FittedBox(
                      child: Image.asset(
                        'images/Button.png',
                        width: 32,
                        height: 32,
                      ),
                    ),
                  ],
                ),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(vertical: 20, horizontal: 24),
          child: Column(
            children: [
              Container(
                width: double.infinity,
               // height: 283.55,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Trending Stories',
                          style: GoogleFonts.hankenGrotesk(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1A1C1C),
                          ),
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsetsGeometry.symmetric(
                              vertical: 8,
                              horizontal: 16,
                            ),

                            backgroundColor: Color(0xFFFAE500),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          icon: Icon(Icons.add_circle_outline_outlined),
                          label: Text(
                            'Post Story',
                            style: GoogleFonts.hankenGrotesk(
                              color: Color(0xFF1F1C00),
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(children: [Expanded(child: _story())]),
                    SizedBox(height: 32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Marketplace Offers',
                          style: GoogleFonts.hankenGrotesk(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'View All',
                          style: GoogleFonts.hankenGrotesk(
                            fontSize: 12,
                            color: Color(0xFF006D33),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    BussineDescription(
                      subtitle: 'Access to all downtown hub…',
                      title: 'Premium Flex Desk',
                      amount: r'$299/mo',
                      textbutton: 'WORKSPACE',
                      image: 'images/bussads.png',
                    ),
                    SizedBox(height: 16),
                    BussineDescription(
                      subtitle: 'Healthy, locally sourced team…',
                      title: 'Executive Catering',
                      amount: r'$15/hd',
                      textbutton: 'SERVICES',
                      image: 'images/Container.png',
                      textcolor: Color(0xFF5E5E5E),
                      color:  Color(0xFFE2E2E2)
                    ),
                    SizedBox(height: 16),
                    BussineDescription(
                        subtitle: 'Comprehensive review by top…',
                        title: 'Brand Identity Audit',
                        amount: r'$1.2k',
                        textbutton: 'CONSULTING',
                        image: 'images/Background.png',
                       // textcolor: Color(0xFFCDBC00),
                        color:  Color(0xFFCDBC00)
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
