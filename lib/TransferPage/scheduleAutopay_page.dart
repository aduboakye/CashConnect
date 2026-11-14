import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScheduleautopayPage extends StatefulWidget {
  const ScheduleautopayPage({super.key});

  @override
  State<ScheduleautopayPage> createState() => _ScheduleautopayPageState();
}

class _ScheduleautopayPageState extends State<ScheduleautopayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 250,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Icon(Icons.arrow_back),
              SizedBox(width: 5),
              Text(
                'Schedule Auto Pay',
                style: GoogleFonts.hankenGrotesk(
                  color: Color(0xFF1A1C1C),
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
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
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),

                        child: Stack(
                          children: [
                            Image.asset(
                              'images/border.png',
                              width: 56,
                              height: 56,
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  color: Color(0xFF006D33),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.verified,
                                  color: Color(0xFFFFFFFF),
                                  size: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sarah Jenkins',
                            style: GoogleFonts.hankenGrotesk(
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF1A1C1C),
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            '@sarahj',
                            style: GoogleFonts.jetBrainsMono(
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF5E5E5E),
                              fontSize: 14,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.home_outlined),
                                Text(
                                  'Roommate · Rent & Utilities',
                                  style: GoogleFonts.hankenGrotesk(
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF3C4A3D),
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
                SizedBox(height: 8),
                SizedBox(
                  width: 350,
                  //height: 200,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Stack(
                      children: [
                        const Positioned.fill(
                          child: ColoredBox(color: Color(0xFF2F3131)),
                        ),
                        const Positioned.fill(
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              gradient: RadialGradient(
                                center: Alignment.topRight,
                                radius: 0.5,
                                colors: [Color(0xFF81B196), Color(0x00006D33)],
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.all(24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'SCHEDULED AMOUNT',
                                    style: GoogleFonts.hankenGrotesk(
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFFF0F1F1),
                                      fontSize: 12,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Edit Amount',
                                        style: GoogleFonts.hankenGrotesk(
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF63FF94),
                                          fontSize: 12,
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
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    '\$450.00',
                                    style: GoogleFonts.hankenGrotesk(
                                      fontWeight: FontWeight.w900,
                                      color: Color(0xFFF0F1F1),
                                      fontSize: 48,
                                    ),
                                  ),
                                  Text(
                                    '/ cycle',
                                    style: GoogleFonts.hankenGrotesk(
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFFF0F1F1),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    flex :3,
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 8,
                                          vertical: 2,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0x4DE2E2E2),
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.circle,
                                              color: Color(0xFF63FF94),
                                              size: 16,
                                            ),
                                            Text(
                                              'Available: \$4,250.00',
                                              style: GoogleFonts.jetBrainsMono(
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFFF0F1F1),
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8,),
                                  Expanded(
                                    flex: 2,
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      alignment: Alignment.centerLeft,
                                      child:  Row(
                                          children: [
                                            Icon(
                                              Icons.check_circle_outline_outlined,
                                              color: Color(0xFF63FF94),
                                              size: 16,
                                            ),
                                            Text(
                                              'Auto-funded',
                                              style: GoogleFonts.jetBrainsMono(
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFF63FF94),
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                      )
                                    )
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24,vertical: 24),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Icon(Icons.event_repeat,color: Color(0xFF006D33),),
                                SizedBox(width: 4,),
                                Text(
                                  'Frequency &\n'
                                  'Cadence',
                                  style: GoogleFonts.hankenGrotesk(
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF1A1C1C),
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'Pacific Time\n'
                              '(PT)',
                            style: GoogleFonts.hankenGrotesk(
                             // fontWeight: FontWeight.w600,
                              color: Color(0xFF1A1C1C),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      )
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
