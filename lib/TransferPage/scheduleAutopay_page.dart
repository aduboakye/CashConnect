import 'package:cashconnect_fanancial_suite/TransferPage/receiverTransfer_Page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScheduleautopayPage extends StatefulWidget {
  const ScheduleautopayPage({super.key});

  @override
  State<ScheduleautopayPage> createState() => _ScheduleautopayPageState();
}

class _ScheduleautopayPageState extends State<ScheduleautopayPage> {
  bool instantRequestEnabled = true;
  bool balanceCheckEnabled = true;
  bool biometricEnable = true;

  int isSecleted = 0;
  final List<String> scheduledescription = [
    'Zero fees',
    'Instant clearing',
    'Pause anytime',
  ];

  final List<IconData> scheduleIcons = [
    Icons.verified_user_outlined,
    Icons.bolt,
    Icons.pause_circle_outline,
  ];

  Widget description() {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 8,
      runSpacing: 4,
      children: List.generate(scheduledescription.length, (index) {
        return TextButton.icon(
          onPressed: () {},
          icon: Icon(scheduleIcons[index], color: const Color(0xFF006D33)),
          label: Text(
            scheduledescription[index],
            style: GoogleFonts.hankenGrotesk(
              color: Color(0xFF5E5E5E),
              fontSize: 12,
            ),
          ),
        );
      }),
    );
  }

  final List<String> scheduleoption = ['Weekly', 'Bi-Weekly', 'Monthly'];

  Widget Schedule() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: List.generate(scheduleoption.length, (index) {
        final bool selected = isSecleted == index;

        return TextButton(
          onPressed: () {
            setState(() {
              isSecleted = index;
            });
          },
          style: TextButton.styleFrom(
            backgroundColor: selected
                ? const Color(0xFF2F3131)
                : const Color(0xFFEEEEEE),
            foregroundColor: selected ? Colors.white : const Color(0xFF5E5E5E),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text(scheduleoption[index]),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 250,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ReceivertransferPage()));

                },
                  child: Icon(Icons.arrow_back)),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    flex: 3,
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
                                          borderRadius: BorderRadius.circular(
                                            12,
                                          ),
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
                                  SizedBox(width: 8),
                                  Expanded(
                                    flex: 2,
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      alignment: Alignment.centerLeft,
                                      child: Row(
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
                                      ),
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
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.event_repeat,
                                  color: Color(0xFF006D33),
                                ),
                                SizedBox(width: 4),
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
                      ),
                      SizedBox(height: 8),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 4,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFE8E8E8),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Schedule(),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Execution Day',
                        style: GoogleFonts.hankenGrotesk(
                          // fontWeight: FontWeight.w600,
                          color: Color(0xFF3C4A3D),
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 4,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFE8E8E8),
                          borderRadius: BorderRadius.circular(8),
                        ),

                        child: ListTile(
                          leading: Container(
                            width: 36,
                            height: 36,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xFFEEEEEE),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Icon(Icons.event),
                          ),
                          title: FittedBox(
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '1st of every month',
                              style: GoogleFonts.hankenGrotesk(
                                fontSize: 20,
                                color: const Color(0xFF262626),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          subtitle: Text(
                            'Renews monthly until canceled',
                            style: GoogleFonts.hankenGrotesk(
                              fontSize: 11,
                              color: const Color(0xFF737373),
                            ),
                          ),
                          trailing: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Color(0xFF5E5E5E),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.schedule, color: Color(0xFF006D33)),
                            Expanded(
                              child: Text(
                                'Next Transfer: Nov 1, 2024 (in 4 days)',
                                style: GoogleFonts.jetBrainsMono(
                                  color: Color(0xFF3C4A3D),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
                  decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF8DAF9D),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Icon(Icons.shield_outlined, size: 14),
                                ),
                                Text(
                                  'CashPay Smart Rules',
                                  style: GoogleFonts.hankenGrotesk(
                                    fontSize: 20,
                                    color: Color(0xFF1A1C1C),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            //width: 60,
                            height: 20,
                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xFF00D66B),
                            ),
                            child: Text(
                              '3 Active',
                              style: GoogleFonts.hankenGrotesk(
                                color: Color(0xFF005627),
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Automated protection that pauses or verifies transactions before funds leave your balance.',
                        style: GoogleFonts.hankenGrotesk(
                          fontSize: 16,
                          color: Color(0xFF5E5E5E),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFF3F3F4),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 36,
                                  height: 36,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFEEEEEE),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Icon(
                                    Icons.account_balance_wallet,
                                    color: Color(0xFF006D33),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Balance threshold check',
                                    maxLines: 1,
                                    style: GoogleFonts.hankenGrotesk(
                                      fontSize: 20,
                                      color: const Color(0xFF262626),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Switch(
                                  activeTrackColor: const Color(0xFF006D33),
                                  activeThumbColor: Colors.white,
                                  value: instantRequestEnabled,
                                  onChanged: (bool newValue) {
                                    setState(() {
                                      instantRequestEnabled = newValue;
                                    });
                                  },
                                ),
                              ],
                            ),
                            Text(
                              'Auto-skips transfer if primary balance drops below \$500.',
                              style: GoogleFonts.hankenGrotesk(
                                fontSize: 16,
                                color: const Color(0xFF737373),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFF3F3F4),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 36,
                                  height: 36,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFEEEEEE),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Icon(
                                    Icons.notifications_active_outlined,
                                    color: const Color(0xFF006D33),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    '24-hour advance push alert',
                                    maxLines: 1,
                                    style: GoogleFonts.hankenGrotesk(
                                      fontSize: 20,
                                      color: const Color(0xFF262626),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Switch(
                                  activeTrackColor: const Color(0xFF006D33),
                                  activeThumbColor: Colors.white,
                                  value: instantRequestEnabled,
                                  onChanged: (bool newValue) {
                                    setState(() {
                                      instantRequestEnabled = newValue;
                                    });
                                  },
                                ),
                              ],
                            ),
                            Text(
                              'Silent ping with 1-tap option to pause transfer for 48h.,',
                              style: GoogleFonts.hankenGrotesk(
                                fontSize: 16,
                                color: const Color(0xFF737373),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFF3F3F4),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 36,
                                  height: 36,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFEEEEEE),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Icon(
                                    Icons.fingerprint,
                                    color: const Color(0xFF006D33),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Biometric auth for amounts > \$300',
                                    maxLines: 1,
                                    style: GoogleFonts.hankenGrotesk(
                                      fontSize: 20,
                                      color: const Color(0xFF262626),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Switch(
                                  activeTrackColor: const Color(0xFF006D33),
                                  activeThumbColor: Colors.white,
                                  value: biometricEnable,
                                  onChanged: (bool newValue) {
                                    setState(() {
                                      biometricEnable = newValue;
                                    });
                                  },
                                ),
                              ],
                            ),
                            Text(
                              'Requires Face ID confirmation before release.',
                              style: GoogleFonts.hankenGrotesk(
                                fontSize: 16,
                                color: const Color(0xFF737373),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  width: 350,
                  padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
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
                            'FUNDING ACCOUNT',
                            style: GoogleFonts.hankenGrotesk(
                              fontSize: 12,
                              color: const Color(0xFF5E5E5E),
                            ),
                          ),
                          Text(
                            'Change source',
                            style: GoogleFonts.hankenGrotesk(
                              fontSize: 12,
                              color: const Color(0xFF006D33),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 3),
                      Container(
                        width: 316,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xFFEDECEC),
                        ),
                        child: ListTile(
                          leading: Container(
                            width: 36,
                            height: 36,
                            decoration: BoxDecoration(
                              color: Color(0xFF2F3131),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Center(
                              child: Text(
                                'CP',
                                style: GoogleFonts.jetBrainsMono(
                                  color: Color(0xFFF0F1F1),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          title: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              'Main Checking',
                              style: GoogleFonts.hankenGrotesk(
                                fontSize: 20,
                                color: Color(0xFF262626),
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                            ),
                          ),
                          subtitle: FittedBox(
                            child: Text(
                              'Chase ···· 4921',
                              style: GoogleFonts.jetBrainsMono(
                                fontSize: 14,
                                color: Color(0xFF5E5E5E),
                                //fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          trailing: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisSize:
                                    MainAxisSize.min, // Add this line.

                                children: [
                                  Icon(
                                    Icons.bolt_outlined,
                                    color: Color(0xFF006D33),
                                  ),
                                  Text(
                                    'Instant ACH',
                                    style: GoogleFonts.hankenGrotesk(
                                      fontSize: 10,
                                      color: Color(0xFF006D33),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'No fee',
                                style: GoogleFonts.hankenGrotesk(
                                  fontSize: 12,
                                  color: Color(0xFF171717),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: FittedBox(fit: BoxFit.scaleDown, child: description()),
                ),
                SizedBox(height: 10),

                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFAE500),
                    fixedSize: Size(350, 56),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  icon: Icon(Icons.arrow_forward, color: Color(0xFF1F1C00)),
                  iconAlignment: IconAlignment.end,
                  label: Text(
                    "Activate Auto-Pay Schedule",
                    style: GoogleFonts.hankenGrotesk(
                      fontSize: 16,
                      color: Color(0xFF1F1C00),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Send one-time \$450.00 right now instead",
                    style: GoogleFonts.hankenGrotesk(
                      fontSize: 14,
                      color: Color(0xFF5E5E5E),
                      //fontWeight: FontWeight.bold,
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
