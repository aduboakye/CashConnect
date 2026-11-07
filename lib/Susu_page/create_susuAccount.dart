import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateSusuaccount extends StatefulWidget {
  const CreateSusuaccount({super.key});

  @override
  State<CreateSusuaccount> createState() => _CreateSusuaccountState();
}

class _CreateSusuaccountState extends State<CreateSusuaccount> {
  bool isEnable = true;
  List<String> description = ['Split Evenly', 'Description', 'Exact Amounts'];

  int ispressed = 0;

  Widget descriptioncard() {
    return Row(
      children: List.generate(description.length, (index) {
        final bool ontap = ispressed == index;

        return Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: 5),
            child: TextButton(
              onPressed: () {
                setState(() {
                  ispressed = index;
                });
              },

              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                backgroundColor: ontap ? Color(0xFFFFFFFF) : Color(0xFFEEEEEE),

                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 12),
              ),

              child: Text(
                description[index],
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.hankenGrotesk(
                  fontSize: 12,
                  color: ontap ? Color(0xFF1A1C1C) : Color(0xFF5E5E5E),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget contactCard({required String name, required String username}) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      decoration: BoxDecoration(
        color: Color(0xFFF3F3F4),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: Color(0xFF63FF94),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(Icons.person_outline),
          ),

          SizedBox(width: 8),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.hankenGrotesk(
                    color: Color(0xFF1A1C1C),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                SizedBox(height: 2),

                Text(
                  username,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.hankenGrotesk(
                    color: Color(0xFF5E5E5E),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(width: 4),

          Icon(Icons.add, size: 18),
        ],
      ),
    );
  }

  Widget addmembers({required String image, required String name}) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 4, right: 8, top: 4, bottom: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xFFF3F3F4),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(image, width: 32, height: 32, fit: BoxFit.cover),
          ),

          SizedBox(width: 5),

          Expanded(
            child: Text(
              name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.hankenGrotesk(
                color: Color(0xFF1A1C1C),
                fontSize: 12,
              ),
            ),
          ),

          IconButton(
            onPressed: () {},
            icon: Icon(Icons.close, size: 18),
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(minWidth: 32, minHeight: 32),
          ),
        ],
      ),
    );
  }

  int selectedIndex = -1;
  Widget groupcategory({
    required IconData icon,
    required String text,
    required int index,
  }) {
    final bool isSelected = selectedIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              // height: 32,
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: isSelected ? Color(0xFF006D33) : Color(0xFFEEEEEE),
              ),
              child: Row(
                children: [
                  Icon(icon),
                  Text(
                    text,
                    style: GoogleFonts.hankenGrotesk(
                      fontSize: 12,
                      color: Color(0xFF3C4A3D),
                    ),
                  ),
                ],
              ),
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
        leadingWidth: 220,

        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFF006D33),
                ),
                child: const Icon(
                  Icons.account_balance_wallet,
                  color: Colors.white,
                ),
              ),

              const SizedBox(width: 10),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CashPay',
                    style: GoogleFonts.hankenGrotesk(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: const Color(0xFF1A1C1C),
                    ),
                  ),
                  Text(
                    'FINANCE',
                    style: GoogleFonts.hankenGrotesk(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      color: const Color(0xFF5E5E5E),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsetsGeometry.only(left: 20, right: 20),
              child: Column(
                children: [
                  Container(
                    width: 350,
                    padding: EdgeInsets.only(top: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xFFEEEEEE),
                          ),
                          child: Icon(Icons.arrow_back),
                        ),
                        Column(
                          children: [
                            Text(
                              'Create Payment Group',
                              style: GoogleFonts.hankenGrotesk(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF1A1C1C),
                              ),
                            ),
                            Text(
                              'Split expenses & instant settlement',
                              style: GoogleFonts.hankenGrotesk(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF5E5E5E),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xFFEEEEEE),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '1',
                                style: GoogleFonts.hankenGrotesk(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF006D33),
                                ),
                              ),
                              Text(
                                '/2',
                                style: GoogleFonts.hankenGrotesk(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF5E5E5E),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 350,
                    padding: EdgeInsets.only(top: 24),
                    child: Container(
                      width: double.infinity,
                      height: 220,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Stack(
                          children: [
                            // Yellow glow at bottom-left
                            Positioned.fill(
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  gradient: RadialGradient(
                                    center: Alignment.bottomLeft,
                                    radius: 0.9,
                                    colors: [
                                      Color(0xFFFFEDB0),
                                      Color(0x00FFEDB0),
                                    ],
                                    stops: [0.0, 1.0],
                                  ),
                                ),
                              ),
                            ),

                            // Green glow at top-right
                            Positioned.fill(
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  gradient: RadialGradient(
                                    center: Alignment.topRight,
                                    radius: 0.9,
                                    colors: [
                                      Color(0xFFD5F5D5),
                                      Color(0x00D5F5D5),
                                    ],
                                    stops: [0.0, 1.0],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 20,
                              ),
                              child: Center(
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          width: 96,
                                          height: 96,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                            color: Color(0xFF00D66B),
                                          ),
                                          child: Icon(
                                            Icons.group_work_outlined,
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 0,
                                          right: 0,
                                          child: Container(
                                            width: 32,
                                            height: 32,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              color: Color(0xFF006D33),
                                            ),
                                            child: Icon(
                                              Icons.camera_alt,
                                              color: Colors.white,
                                              size: 15,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Text(
                                            'Choose Group Icon or Emoji',
                                            style: GoogleFonts.hankenGrotesk(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF1A1C1C),
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Container(
                                                width: 32,
                                                height: 32,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  color: Color(0xFFEEEEEE),
                                                ),
                                                child: Icon(Icons.flight),
                                              ),
                                              Container(
                                                width: 32,
                                                height: 32,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  color: Color(0xFFEEEEEE),
                                                ),
                                                child: Icon(
                                                  Icons.home_outlined,
                                                ),
                                              ),
                                              Container(
                                                width: 32,
                                                height: 32,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  color: Color(0xFFEEEEEE),
                                                ),
                                                child: Icon(
                                                  Icons.celebration_outlined,
                                                ),
                                              ),
                                              Container(
                                                width: 32,
                                                height: 32,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  color: Color(0xFFEEEEEE),
                                                ),
                                                child: Icon(Icons.restaurant),
                                              ),
                                              Container(
                                                width: 32,
                                                height: 32,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  color: Color(0xFFEEEEEE),
                                                ),
                                                child: Icon(
                                                  Icons.bolt_outlined,
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
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 350,
                    padding: EdgeInsets.only(top: 25),
                    child: Column(
                      children: [
                        Container(
                          width: 350,
                          padding: EdgeInsets.symmetric(
                            vertical: 16,
                            horizontal: 16,
                          ),
                          decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'GROUP NAME',
                                style: GoogleFonts.hankenGrotesk(
                                  fontSize: 12,
                                  color: Color(0xFF5E5E5E),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Container(
                                width: 318,
                                height: 52,
                                padding: EdgeInsets.only(
                                  left: 44,
                                  right: 16,
                                  bottom: 10,
                                  top: 10,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFF3F3F4),
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.badge_outlined),
                                    SizedBox(width: 5),
                                    Expanded(
                                      child: Text(
                                        'NYC Trip 2024',
                                        style: GoogleFonts.hankenGrotesk(
                                          fontSize: 20,
                                          color: Color(0xFF5E5E5E),
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 16),

                              Text(
                                'DESCRIPTION (OPTIONAL)',
                                style: GoogleFonts.hankenGrotesk(
                                  fontSize: 12,
                                  color: Color(0xFF5E5E5E),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),

                              Container(
                                width: 318,
                                height: 68,
                                padding: EdgeInsets.only(
                                  left: 44,
                                  right: 16,
                                  bottom: 10,
                                  top: 10,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFF3F3F4),
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.description),
                                    SizedBox(width: 5),
                                    Expanded(
                                      child: Text(
                                        'Shared rent, bills, groceries and \ndinners',
                                        style: GoogleFonts.hankenGrotesk(
                                          fontSize: 16,
                                          color: Color(0xFF5E5E5E),
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'GROUP CATEGORY',
                                style: GoogleFonts.hankenGrotesk(
                                  fontSize: 12,
                                  color: Color(0xFF5E5E5E),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: groupcategory(
                                      icon: Icons.home_outlined,
                                      text: 'Household',
                                      index: 1,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Expanded(
                                    child: groupcategory(
                                      icon: Icons.flight,
                                      text: 'Travel',
                                      index: 2,
                                    ),
                                  ),
                                  SizedBox(width: 5),

                                  Expanded(
                                    child: groupcategory(
                                      icon: Icons.restaurant_outlined,
                                      text: ' Dining',
                                      index: 3,
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
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Container(
                            width: 300,
                            height: 32,
                            padding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xFFE2E2E2),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color(0xFF63FF94),
                                  size: 15,
                                ),
                                SizedBox(width: 2),
                                Flexible(
                                  child: Text(
                                    'GROUP CONTRIBUTION SETUP',
                                    style: GoogleFonts.hankenGrotesk(
                                      color: Color(0xFF1A1C1C),
                                      fontSize: 12,
                                    ),
                                    maxLines: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Step',
                              style: GoogleFonts.jetBrainsMono(
                                color: Color(0xFF1A1C1C),
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              ' 1 ',
                              style: GoogleFonts.jetBrainsMono(
                                color: Color(0xFF006D33),
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              'of 2',
                              style: GoogleFonts.jetBrainsMono(
                                color: Color(0xFF1A1C1C),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 350,
                    padding: EdgeInsets.only(top: 24),
                    child: Container(
                      width: 350,
                      padding: EdgeInsets.only(
                        top: 48,
                        right: 24,
                        left: 24,
                        bottom: 24,
                      ),
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'GROUP POOL NAME',
                                style: GoogleFonts.jetBrainsMono(
                                  color: Color(0xFF63FF94),
                                  fontSize: 14,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.edit,
                                  color: Color(0xFFF0F1F1),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.park, color: Color(0xFF63FF94)),
                              Text(
                                'NYC Summer Trip 2025',
                                style: GoogleFonts.jetBrainsMono(
                                  color: Color(0xFFF0F1F1),
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          Divider(height: 1.5, thickness: 1),
                          SizedBox(height: 24),
                          Container(
                            width: 320,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Pool Type Model',
                                  style: GoogleFonts.jetBrainsMono(
                                    color: Color(0xFF63FF94),
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(height: 7),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 48,
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 12,
                                          vertical: 8,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            2,
                                          ),
                                          color: const Color(0xFF006D33),
                                        ),
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'Equal Split Target',
                                            maxLines: 1,
                                            style: GoogleFonts.jetBrainsMono(
                                              color: const Color(0xFFFFFFFF),
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 4),
                                    Expanded(
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 8,
                                          vertical: 8,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            2,
                                          ),
                                          color: const Color(0xFF006D33),
                                        ),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: FittedBox(
                                                fit: BoxFit.scaleDown,
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  'Rotational\nSusu',
                                                  style:
                                                      GoogleFonts.jetBrainsMono(
                                                        color: const Color(
                                                          0xFFFFFFFF,
                                                        ),
                                                        fontSize: 14,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 6),
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                    horizontal: 6,
                                                    vertical: 4,
                                                  ),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                color: const Color(0xFF16E678),
                                              ),
                                              child: Text(
                                                'POPULAR',
                                                style:
                                                    GoogleFonts.jetBrainsMono(
                                                      color: const Color(
                                                        0xFFFFFFFF,
                                                      ),
                                                      fontSize: 10,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 24),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Equal Split Target',
                                          maxLines: 1,
                                          style: GoogleFonts.jetBrainsMono(
                                            color: const Color(0xFFFFFFFF),
                                            fontSize: 14,
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.lock_outline,
                                                color: const Color(0xFF006D33),
                                              ),
                                              Text(
                                                'USD Auto-Lock',
                                                maxLines: 1,
                                                style:
                                                    GoogleFonts.jetBrainsMono(
                                                      color: const Color(
                                                        0xFF006D33,
                                                      ),
                                                      fontSize: 14,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          r'$2,500.00',
                                          maxLines: 1,
                                          style: GoogleFonts.hankenGrotesk(
                                            color: const Color(0xFFF0F1F1),
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(width: 2),
                                        Text(
                                          'USD',
                                          maxLines: 1,
                                          style: GoogleFonts.jetBrainsMono(
                                            color: const Color(0xFFF0F1F1),
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 4),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.circle,
                                                color: Color(0xFF63FF94),
                                                size: 14,
                                              ),
                                              Text(
                                                'Per member \nbreakdown:',
                                                style:
                                                    GoogleFonts.hankenGrotesk(
                                                      color: Color(0xFFF0F1F1),
                                                      fontSize: 12,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        // SizedBox(width: 5,),
                                        Text(
                                          '\$500.00 / 5 \n members',
                                          style: GoogleFonts.jetBrainsMono(
                                            color: Color(0xFF63FF94),
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 24),
                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Payment Cadence',
                                        style: GoogleFonts.jetBrainsMono(
                                          color: const Color(0xFFF0F1F1),
                                          fontSize: 14,
                                        ),
                                      ),
                                      const SizedBox(height: 7),
                                      Container(
                                        height: 60,
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 8,
                                        ),
                                        color: const Color(0x4DE2E2E2),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                'Bi-Weekly',
                                                style:
                                                    GoogleFonts.jetBrainsMono(
                                                      color: const Color(
                                                        0xFFF0F1F1,
                                                      ),
                                                      fontSize: 14,
                                                    ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 32,
                                              height: 48,
                                              child: IconButton(
                                                padding: EdgeInsets.zero,
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.keyboard_arrow_down,
                                                  color: Color(0xFFF0F1F1),
                                                  size: 20,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Target Payout',
                                        style: GoogleFonts.jetBrainsMono(
                                          color: const Color(0xFFF0F1F1),
                                          fontSize: 14,
                                        ),
                                      ),
                                      const SizedBox(height: 7),
                                      Container(
                                        height: 60,
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 8,
                                        ),
                                        color: const Color(0x4DE2E2E2),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                'Nov 30,\n2024',
                                                style:
                                                    GoogleFonts.jetBrainsMono(
                                                      color: const Color(
                                                        0xFFF0F1F1,
                                                      ),
                                                      fontSize: 14,
                                                    ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 32,
                                              height: 48,
                                              child: IconButton(
                                                padding: EdgeInsets.zero,
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.calendar_month_outlined,
                                                  color: Color(0xFFF0F1F1),
                                                  size: 20,
                                                ),
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
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 350,
                    padding: EdgeInsets.only(top: 24),
                    child: Container(
                      width: 350,
                      padding: EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 16,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xFFFFFFFF),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: ListTile(
                                  title: Text(
                                    'Add Members',
                                    style: GoogleFonts.hankenGrotesk(
                                      color: Color(0xFF1A1C1C),
                                      fontSize: 20,
                                    ),
                                  ),
                                  subtitle: Text(
                                    '4 friends already included',
                                    style: GoogleFonts.hankenGrotesk(
                                      fontSize: 12,
                                      color: Color(0xFF5E5E5E),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 85.45,
                                height: 24,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 2,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFF63FF94),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Text(
                                  '4/20 MAX',
                                  style: GoogleFonts.jetBrainsMono(
                                    color: Color(0xFF006D33),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          Container(
                            width: double.infinity,
                            height: 44,
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                              color: Color(0xFFF3F3F4),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: TextField(
                              maxLines: 1,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                isDense: true,

                                prefixIcon: Icon(Icons.search, size: 20),
                                prefixIconConstraints: BoxConstraints(
                                  minWidth: 30,
                                  minHeight: 40,
                                ),

                                hintText:
                                    'Search contacts by name, @username, or phone...',
                                hintStyle: GoogleFonts.hankenGrotesk(
                                  fontSize: 16,
                                  color: Color(0xFF5E5E5E),
                                ),

                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 12,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: addmembers(
                                  image: 'images/border.png',
                                  name: 'Elena R.',
                                ),
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: addmembers(
                                  image: 'images/border.png',
                                  name: 'Elena R.',
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: addmembers(
                                  image: 'images/border.png',
                                  name: 'Elena R.',
                                ),
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: addmembers(
                                  image: 'images/border.png',
                                  name: 'Elena R.',
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'QUICK SUGGESTIONS',
                                style: GoogleFonts.hankenGrotesk(
                                  color: Color(0xFF5E5E5E),
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                'View All',
                                style: GoogleFonts.hankenGrotesk(
                                  color: Color(0xFF006D33),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Expanded(
                                child: contactCard(
                                  name: 'Devon King',
                                  username: '@devon_k',
                                ),
                              ),

                              SizedBox(width: 8),

                              Expanded(
                                child: contactCard(
                                  name: 'Sarah Jenkins',
                                  username: '@sarah_j',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 350,
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Public Shareable Invite Link',
                              style: GoogleFonts.hankenGrotesk(
                                color: Color(0xFF1A1C1C),
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.share, color: Color(0xFF006D33)),
                            ),
                          ],
                        ),
                        Text(
                          'Anyone with this secure link can verify & request to join this pool.',
                          style: GoogleFonts.hankenGrotesk(
                            color: Color(0xFF3C4A3D),
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 12),
                        Container(
                          width: 334,
                          height: 40,
                          padding: EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 8,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'cashpay.me/pool/nyc-trip-984',
                                style: GoogleFonts.hankenGrotesk(
                                  color: Color(0xFF3C4A3D),
                                  fontSize: 16,
                                ),
                              ),
                              Expanded(
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    backgroundColor: const Color(0xFF2F3131),
                                    minimumSize: Size.zero,
                                    fixedSize: const Size.fromHeight(24),
                                    padding: EdgeInsets.zero,
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.copy,
                                        color: Color(0xFFF0F1F1),
                                        size: 16,
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        'Copy',
                                        style: GoogleFonts.hankenGrotesk(
                                          color: const Color(0xFFF0F1F1),
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton.icon(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFE8E8E8),
                                shape: RoundedRectangleBorder(),
                                fixedSize: Size(165, 24)
                              ),
                              icon: Icon(Icons.message_outlined,color: Color(0xFF006D33),),
                              label: Text(
                                'WhatsApp',
                                style: GoogleFonts.hankenGrotesk(
                                  color: const Color(0xFF1A1C1C),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            ElevatedButton.icon(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFE8E8E8),
                                  shape: RoundedRectangleBorder(),
                                  fixedSize: Size(165, 24)
                              ),
                              icon: Icon(Icons.sms_outlined,color: Color(0xFF5E5E5E),),
                              label: Text(
                                'SMS',
                                style: GoogleFonts.hankenGrotesk(
                                  color: const Color(0xFF1A1C1C),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 350,
                    padding: EdgeInsets.only(top: 24),
                    child: Container(
                      width: 350,
                      padding: EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 16,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0XFFFFFFFF),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 29,
                                width: 29,
                                decoration: BoxDecoration(
                                  color: Color(0xFF63FF94),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Icon(
                                  Icons.calculate_outlined,
                                  size: 13.5,
                                ),
                              ),
                              SizedBox(width: 5),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Split Preferences',
                                    style: GoogleFonts.hankenGrotesk(
                                      color: Color(0xFF1A1C1C),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'How group transactions will calculate',
                                    style: GoogleFonts.hankenGrotesk(
                                      color: Color(0xFF5E5E5E),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          Container(
                            width: 318,
                            height: 45,
                            padding: EdgeInsets.symmetric(
                              vertical: 4,
                              horizontal: 4,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xFFF3F3F4),
                            ),
                            child: Row(
                              children: [Expanded(child: descriptioncard())],
                            ),
                          ),
                          SizedBox(height: 16),
                          Container(
                            width: 318,
                            padding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 12,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xFFF3F3F4),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 18,
                                  height: 34,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color(0xFF8DAF9D),
                                  ),
                                  child: Icon(
                                    Icons.bolt_outlined,
                                    color: Color(0xFF006D33),
                                    size: 20,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Instant Settlement Enabled',
                                      style: GoogleFonts.hankenGrotesk(
                                        color: Color(0xFF1A1C1C),
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Allows immediate automatic payouts\ndirectly to connected debit cards when\npool balance reaches zero debt.',
                                      style: GoogleFonts.hankenGrotesk(
                                        color: Color(0xFF5E5E5E),
                                        fontSize: 11,
                                      ),
                                    ),
                                  ],
                                ),
                                Switch(
                                  value: isEnable,
                                  onChanged: (value) {
                                    setState(() {
                                      isEnable = value;
                                    });
                                  },
                                  activeTrackColor: Color(0xFF006D33),
                                  activeColor: Colors.white,
                                  inactiveTrackColor: Color(0xFFEEEEEE),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16),

                  Container(
                    width: 350,
                    padding: EdgeInsets.symmetric(vertical: 14, horizontal: 14),
                    decoration: BoxDecoration(
                      color: Color(0xFFE8E8E8),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.verified_user_outlined,
                          color: Color(0xFF006D33),
                        ),
                        // SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'End-to-End Ledger Protection',
                              style: GoogleFonts.hankenGrotesk(
                                color: Color(0xFF1A1C1C),
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'FDIC-insured CashPay pool account',
                              style: GoogleFonts.hankenGrotesk(
                                color: Color(0xFF5E5E5E),
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          r'$0 Fee',
                          style: GoogleFonts.jetBrainsMono(
                            color: Color(0xFF006D33),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  SafeArea(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward, color: Colors.black),
                        iconAlignment: IconAlignment.end,
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(350, 60),
                          backgroundColor: Color(0xFFFAE500),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        label: Text(
                          'Create Group & Continue',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Invites will be dispatched instantly via SMS & in-app notification.',
                    style: GoogleFonts.hankenGrotesk(
                      color: Color(0xFF5E5E5E),
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
