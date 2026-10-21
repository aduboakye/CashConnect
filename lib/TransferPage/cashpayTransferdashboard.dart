import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cashpaytransferdashboard extends StatefulWidget {
  const Cashpaytransferdashboard({super.key});

  @override
  State<Cashpaytransferdashboard> createState() =>
      _CashpaytransferdashboardState();
}

class _CashpaytransferdashboardState extends State<Cashpaytransferdashboard> {
  Widget recent({
    required String title,
    required String subtitle,
    required String subtitle1,

    required text,
    required String image,
    required IconData icon,
  }) {
    return Container(
      width: 350,
     // height: 200,
      padding: EdgeInsetsGeometry.symmetric(vertical: 12, horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Flexible(
            child: Container(
              width: double.infinity,
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(12),
                      child: Image.asset(image)),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                style: GoogleFonts.hankenGrotesk(
                                  fontSize: 15,
                                  color: Color(0xFF1A1C1C),
                                ),
                              ),
                             // SizedBox(width: 1),
                              IconButton(
                                onPressed: () {},

                                icon: Icon(icon,color: Colors.green,),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                subtitle,
                                style: GoogleFonts.jetBrainsMono(
                                  fontSize: 12,
                                  color: Color(0xFF1A1C1C),
                                ),
                              ),
                              SizedBox(width: 4),
                              Text(
                                subtitle1,
                                style: GoogleFonts.jetBrainsMono(
                                  fontSize: 12,
                                  color: Color(0xFF1A1C1C),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          text,
                          style: GoogleFonts.hankenGrotesk(
                            fontSize: 11,
                            color: Color(0xFF1A1C1C),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  TextButton.icon(
                    onPressed: () {},
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(8),
                      ),
                    ),
                    label: Text(
                      'Pay',
                      style: GoogleFonts.hankenGrotesk(
                        fontSize: 11,
                        color: Color(0xFF1A1C1C),
                      ),
                    ),
                    icon: Icon(Icons.arrow_forward),
                    iconAlignment:IconAlignment.end ,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget transferoption({
    required String name,
    required String surname,
    required IconData icon,
    bool isactive = true,
  }) {
    return Container(
      width: 334,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: IconButton(
              onPressed: () {},
              style: IconButton.styleFrom(
                backgroundColor: Colors.greenAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),

              icon: Icon(icon),
            ),
            title: FittedBox(
              child: Text(
                name,
                style: GoogleFonts.hankenGrotesk(
                  fontSize: 12,
                  color: Color(0xFF1A1C1C),
                ),
              ),
            ),
            subtitle: FittedBox(
              child: Text(
                surname,
                style: GoogleFonts.jetBrainsMono(
                  fontSize: 10,
                  color: Color(0xFF1A1C1C),
                ),
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }

  Widget cashpaymember({
    required String name,
    required String surname,
    required String image,
    bool isactive = true,
  }) {
    return Container(
      width: 70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(image, width: 56),
              ),
              Positioned(
                left: 42,
                bottom: -2,
                child: Icon(
                  Icons.circle,
                  color: isactive ? Colors.greenAccent : Colors.grey,
                  size: 15,
                ),
              ),
            ],
          ),
          ListTile(
            title: FittedBox(
              child: Text(
                name,
                style: GoogleFonts.hankenGrotesk(
                  fontSize: 12,
                  color: Color(0xFF1A1C1C),
                ),
              ),
            ),
            subtitle: FittedBox(
              child: Text(
                surname,
                style: GoogleFonts.jetBrainsMono(
                  fontSize: 10,
                  color: Color(0xFF1A1C1C),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  final List<String> tabbartext = [
    'All',
    'Recent',
    'Favorites',
    'Contacts',
    'Institutions',
  ];

  int selected = 0;
  int selectedamount = 0;

  Widget tabButton({required String text, required int index}) {
    final bool isSelected = selected == index;

    return TextButton(
      onPressed: () {
        setState(() {
          selected = index;
        });
      },
      style: TextButton.styleFrom(
        backgroundColor: isSelected ? Colors.black : const Color(0xFFEEEEEE),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Text(
        text,
        style: GoogleFonts.hankenGrotesk(
          fontSize: 12,
          color: isSelected ? Colors.white : const Color(0xFF3C4A3D),
        ),
      ),
    );
  }

  final List<String> amount = [r'+$10', r'+$25', r'+$25', r'+$25', 'clear'];

  //int selected = 0;

  Widget amountButton({required String text, required int index}) {
    final bool isSelected = selectedamount == index;

    return TextButton(
      onPressed: () {
        setState(() {
          selectedamount = index;
        });
      },
      style: TextButton.styleFrom(
        backgroundColor: isSelected ? Colors.black : const Color(0xFFEEEEEE),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Text(
        text,
        style: GoogleFonts.hankenGrotesk(
          fontSize: 12,
          color: isSelected ? Colors.white : const Color(0xFF3C4A3D),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: 390,
          height: 80,
          padding: EdgeInsets.only(bottom: 16, top: 16, right: 20, left: 13),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back, color: Color(0xFF3C4A3D)),
                  ),
                  Text(
                    'Transfer',
                    style: GoogleFonts.hankenGrotesk(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF006D33),
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.receipt_long, color: Color(0xFF3C4A3D)),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(vertical: 24, horizontal: 20),
          child: Column(
            children: [
              Container(
                width: 350,
                height: 50,
                padding: EdgeInsetsGeometry.symmetric(
                  vertical: 4,
                  horizontal: 4,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusGeometry.circular(8),
                  color: Color(0xFFEEEEEE),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hint: FittedBox(
                            child: Text(
                              'Name, @cashtag, phone, or email',
                              style: GoogleFonts.hankenGrotesk(
                                fontSize: 16,
                                color: Color(0xFF3C4A3D),
                              ),
                            ),
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    FittedBox(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.qr_code_2, color: Color(0xFF006D33)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(tabbartext.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: tabButton(text: tabbartext[index], index: index),
                    );
                  }),
                ),
              ),
              SizedBox(height: 24),
              Container(
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  //border: Border.all(width: 1),
                  color: Color(0xFFFFFFFF),
                ),
                padding: EdgeInsetsGeometry.symmetric(
                  vertical: 16,
                  horizontal: 16,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'SEND AMOUNT',
                          style: GoogleFonts.jetBrainsMono(
                            fontSize: 11,
                            color: Color(0xFF3C4A3D),
                          ),
                        ),
                        SizedBox(
                          width: 160,
                          height: 21,
                          child: TextButton.icon(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: const Color(0xFF7EDDBF),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 6,
                              ),
                              minimumSize: Size.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            icon: const Icon(
                              Icons.account_balance_wallet,
                              size: 14,
                              color: Color(0xFF006D33),
                            ),
                            label: Text(
                              r'Balance: $4,250.00',
                              maxLines: 1,
                              style: GoogleFonts.jetBrainsMono(
                                fontSize: 11,
                                color: const Color(0xFF3C4A3D),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Container(
                      width: 316,
                      //height: 56,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Icon(Icons.attach_money, color: Colors.green),
                              SizedBox(width: 4),
                              Expanded(
                                child: SizedBox(
                                  width: 192,
                                  height: 40,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      //border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(width: 4),
                              Text(
                                'USD',
                                style: GoogleFonts.jetBrainsMono(
                                  fontSize: 12,
                                  color: Color(0xFF3C4A3D),
                                ),
                              ),
                            ],
                          ),
                          TextButton.icon(
                            onPressed: () {},
                            label: Text(
                              'Tap to focus keypad',
                              style: GoogleFonts.jetBrainsMono(
                                fontSize: 11,
                                color: Color(0xFF3C4A3D),
                              ),
                            ),
                            icon: Icon(
                              Icons.touch_app_outlined,
                              color: Color(0xFF3C4A3D),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(amount.length, (index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: amountButton(
                              text: amount[index],
                              index: index,
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Container(
                width: 350,
                // color: Color(0xFFE8E8E8),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Top Favorites',
                          style: GoogleFonts.hankenGrotesk(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1A1C1C),
                          ),
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          label: Text(
                            'instant',
                            style: GoogleFonts.jetBrainsMono(
                              fontSize: 11,
                              color: Color(0xFF3C4A3D),
                            ),
                          ),
                          icon: Icon(Icons.bolt, color: Color(0xFF006D33)),
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          cashpaymember(
                            name: 'Sarah',
                            surname: '@sarahj',
                            image: 'images/cashpaym1.png',
                          ),
                          cashpaymember(
                            name: 'Sarah',
                            surname: '@sarahj',
                            image: 'images/cashpaym1.png',
                          ),
                          cashpaymember(
                            name: 'Sarah',
                            surname: '@sarahj',
                            image: 'images/cashpaym1.png',
                          ),
                          cashpaymember(
                            name: 'Sarah',
                            surname: '@sarahj',
                            image: 'images/cashpaym1.png',
                          ),
                          cashpaymember(
                            name: 'Sarah',
                            surname: '@sarahj',
                            image: 'images/cashpaym1.png',
                          ),

                          cashpaymember(
                            name: 'Sarah',
                            surname: '@sarahj',
                            image: 'images/cashpaym1.png',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24),

                    Container(
                      width: 350,
                      padding: EdgeInsetsGeometry.symmetric(
                        vertical: 8,
                        horizontal: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          transferoption(
                            name: 'Add New Contact or @cashtag',
                            surname: 'Send directly to an unregistered tag',
                            icon: Icons.qr_code,
                          ),
                          transferoption(
                            name: 'Add New Contact or @cashtag',
                            surname: 'Send directly to an unregistered tag',
                            icon: Icons.qr_code,
                          ),
                          transferoption(
                            name: 'Add New Contact or @cashtag',
                            surname: 'Send directly to an unregistered tag',
                            icon: Icons.qr_code,
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 24),
                    Container(
                      width: 350,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Suggested & Recent',
                                style: GoogleFonts.hankenGrotesk(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF1A1C1C),
                                ),
                              ),
                              Text(
                                '5 Contacts Found',
                                style: GoogleFonts.hankenGrotesk(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF1A1C1C),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          recent(
                            title: 'Sarah Jenkins',
                            subtitle: '@mchen',
                            text: 'Instant ACH Linked • Priority Payee',
                            image: 'images/cashpaym1.png',
                            icon: Icons.verified,
                            subtitle1: 'chloe.b@design.io',
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
  }
}
