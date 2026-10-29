import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReceivertransferPage extends StatefulWidget {
  const ReceivertransferPage({super.key});

  @override
  State<ReceivertransferPage> createState() => _ReceivertransferPageState();
}

class _ReceivertransferPageState extends State<ReceivertransferPage> {
  bool isSeleted = true;
  int selectedIndex = 0;

  final List<String> filters = ['All', 'Sent', 'Received'];
  Widget recentTransaction({
    required String title,
    required String subtitle,
    required IconData icon,
    required String amountext,
    required String text,
    required String title2,
    bool fontcolor = true,
  }) {
    final statusColor = fontcolor
        ? const Color(0xFF006D33)
        : const Color(0xFF5E5E5E);

    return Container(
      width: 302,
      // Let the content determine the height.
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xFFF3F3F4),
      ),
      child: Row(
        children: [
          // Left: transaction icon.
          Container(
            width: 36,
            height: 36,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xFFE5E5E5),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, size: 20),
          ),

          const SizedBox(width: 10),

          // Middle: transaction details.
          Expanded(
            flex: 3,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.hankenGrotesk(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: const Color(0xFF1A1C1C),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.jetBrainsMono(
                    fontSize: 12,
                    color: const Color(0xFF5E5E5E),
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.circle, size: 6, color: Color(0xFF5E5E5E)),
                    const SizedBox(width: 4),
                    Flexible(
                      child: Text(
                        text,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.jetBrainsMono(
                          fontSize: 12,
                          color: const Color(0xFF5E5E5E),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(width: 8),

          // Right: amount and status.
          Expanded(
            flex: 2,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  amountext,
                  textAlign: TextAlign.right,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.jetBrainsMono(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: const Color(0xFF1A1C1C),
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: statusColor,
                      ),
                      child: Icon(Icons.check, size: 14, color: Colors.white),
                    ),

                    const SizedBox(width: 4),
                    Flexible(
                      child: Text(
                        title2,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.jetBrainsMono(
                          fontSize: 12,
                          color: statusColor,
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, color: Color(0xFF006D33)),
        ),
        title: Text(
          'Elena Rodriguez',
          style: GoogleFonts.hankenGrotesk(
            fontSize: 2,
            color: Color(0xFF1A1C1C),
          ),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Edit',
              style: GoogleFonts.hankenGrotesk(
                fontSize: 20,
                color: Color(0xFF006D33),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: double.infinity,
                    // height: 276,
                    padding: EdgeInsetsGeometry.symmetric(vertical: 24),
                  ),
                ),
                Align(
                  alignment: Alignment.center,

                  child: Container(
                    width: 170.94,
                    // height: 160,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                      gradient: RadialGradient(
                        // center: Alignment.center,
                        radius: 1.2,
                        stops: [0.0, 1.0],
                        colors: [
                          Color(0xFFC6EADC).withValues(alpha: 0.3),
                          Color(0xFFFFFFFF).withValues(alpha: 0.2),
                        ],
                      ),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Stack(
                            children: [
                              Container(
                                width: 128,
                                height: 152,
                                padding: EdgeInsets.only(bottom: 24),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset('images/profile.png'),
                                ),
                              ),
                              Positioned(
                                left: 100,
                                bottom: 25,

                                child: Icon(
                                  Icons.circle,
                                  color: Colors.lightGreenAccent,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Elena Rodriguez',
                          style: GoogleFonts.hankenGrotesk(
                            fontSize: 20,
                            color: Color(0xFF1A1C1C),
                          ),
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.circle, color: Color(0xFF006D33)),
                          label: Text(
                            'Active',
                            style: GoogleFonts.hankenGrotesk(
                              fontSize: 12,
                              color: Color(0xFF1A1C1C),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: 390,
              padding: EdgeInsetsGeometry.symmetric(vertical: 24),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      TextButton.icon(
                        onPressed: () {},
                        icon: Container(
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                            color: Color(0xFF8DAF9D),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(Icons.shield, color: Color(0xFF006D33)),
                        ),
                        label: Text(
                          'Recipient Profile',
                          style: GoogleFonts.hankenGrotesk(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1A1C1C),
                          ),
                        ),
                      ),
                      Container(
                        width: 80,
                        child: Row(
                          children: [
                            Container(
                              width: 36,
                              height: 36,
                              decoration: BoxDecoration(
                                color: Color(0xFFEEEEEE),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Icon(Icons.star, color: Color(0xFF695F00)),
                            ),
                            SizedBox(width: 5),
                            Container(
                              width: 36,
                              height: 36,
                              decoration: BoxDecoration(
                                color: Color(0xFFEEEEEE),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Icon(
                                Icons.more_horiz,
                                color: Color(0xFF695F00),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 350,
                    // height: 344,
                    padding: EdgeInsets.only(top: 24),
                    child: Container(
                      width: 350,
                      //height: 320,
                      padding: EdgeInsets.symmetric(
                        vertical: 24,
                        horizontal: 24,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFF2F3131),
                      ),
                      child: Container(
                        width: 302,
                        child: Column(
                          children: [
                            Center(
                              child: Stack(
                                children: [
                                  Container(
                                    width: 128,
                                    height: 152,
                                    padding: EdgeInsets.only(bottom: 24),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset('images/profile.png'),
                                    ),
                                  ),
                                  Positioned(
                                    left: 100,
                                    bottom: 25,

                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Color(0xFF00D66B),
                                      ),
                                      child: Icon(
                                        Icons.check,
                                        color: Colors.lightGreenAccent,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Sarah Jenkins',
                                  style: GoogleFonts.hankenGrotesk(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFF0F1F1),
                                  ),
                                ),
                                Icon(Icons.verified, color: Color(0xFF29E376)),
                              ],
                            ),
                            Text(
                              '@sarahj • Joined Mar 2022',
                              style: GoogleFonts.jetBrainsMono(
                                fontSize: 14,

                                color: Color(0xFFBBCBB9),
                              ),
                            ),
                            FittedBox(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextButton.icon(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.circle,
                                      color: Color(0xFF006D33),
                                    ),
                                    style: TextButton.styleFrom(
                                      backgroundColor: Color(0xFF989393),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),

                                    label: Text(
                                      'Recipient Profile',
                                      style: GoogleFonts.hankenGrotesk(
                                        fontSize: 12,
                                        color: Color(0xFFF0F1F1),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  TextButton.icon(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.bolt,
                                      color: Color(0xFF29E376),
                                    ),
                                    style: TextButton.styleFrom(
                                      backgroundColor: Color(0xFF518060),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    label: Text(
                                      'Instant Transfer Active',
                                      style: GoogleFonts.hankenGrotesk(
                                        fontSize: 12,
                                        color: Color(0xFF29E376),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 64,
                              padding: EdgeInsets.only(
                                left: 4,
                                right: 4,
                                bottom: 4,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0x4DE2E2E2),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: ListTile(
                                      contentPadding: EdgeInsets.zero,
                                      title: Text(
                                        'Total Sent',
                                        style: GoogleFonts.hankenGrotesk(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Color(0xFFBBCBB9),
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      subtitle: Text(
                                        r'$1,240.00',
                                        style: GoogleFonts.jetBrainsMono(
                                          fontSize: 12,
                                          color: Color(0xFFBBCBB9),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: ListTile(
                                      contentPadding: EdgeInsets.zero,
                                      title: Text(
                                        'Received',
                                        style: GoogleFonts.hankenGrotesk(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Color(0xFFBBCBB9),
                                        ),
                                      ),
                                      subtitle: Text(
                                        r'$1,240.00',
                                        style: GoogleFonts.jetBrainsMono(
                                          fontSize: 12,
                                          color: Color(0xFFBBCBB9),
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: ListTile(
                                      contentPadding: EdgeInsets.zero,
                                      title: Text(
                                        'Net Status',
                                        maxLines: 1,
                                        style: GoogleFonts.hankenGrotesk(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Color(0xFFBBCBB9),
                                        ),
                                      ),
                                      subtitle: Text(
                                        'Settled',
                                        style: GoogleFonts.hankenGrotesk(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFFAE500),
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
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
                  Container(
                    width: 350,
                    padding: EdgeInsets.only(top: 24),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_upward,
                                color: Color(0xFF1F1C00),
                              ),
                              style: TextButton.styleFrom(
                                fixedSize: const Size(169, 52),
                                backgroundColor: Color(0xFFFAE500),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    12,
                                  ),
                                ),
                              ),
                              label: Text(
                                'Send',
                                style: GoogleFonts.hankenGrotesk(
                                  color: Color(0xFF1F1C00),
                                ),
                              ),
                            ),
                            TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_downward,
                                color: Color(0xFF006D33),
                              ),
                              style: TextButton.styleFrom(
                                fixedSize: const Size(169, 52),
                                backgroundColor: Color(0xFFFFFFFF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    12,
                                  ),
                                ),
                              ),
                              label: Text(
                                'Request',
                                style: GoogleFonts.hankenGrotesk(
                                  color: Color(0xFF1F1C00),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 114,
                              height: 114,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xFFFFFFFF),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment
                                      .center, // Vertical center
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 36,
                                      height: 36,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Color(0xFFEEEEEE),
                                      ),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.call_split),
                                      ),
                                    ),
                                    Text(
                                      'Split Bill',
                                      style: GoogleFonts.hankenGrotesk(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        color: Color(0xFF1A1C1C),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 114,
                              height: 114,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xFFFFFFFF),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment
                                      .center, // Vertical center
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 36,
                                      height: 36,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Color(0xFFEEEEEE),
                                      ),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.update),
                                      ),
                                    ),
                                    Text(
                                      'Auto-Pay',
                                      style: GoogleFonts.hankenGrotesk(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        color: Color(0xFF1A1C1C),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 114,
                              height: 114,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xFFFFFFFF),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment
                                      .center, // Vertical center
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 36,
                                      height: 36,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Color(0xFFEEEEEE),
                                      ),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.qr_code_2),
                                      ),
                                    ),
                                    Text(
                                      'Share Card',
                                      style: GoogleFonts.hankenGrotesk(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        color: Color(0xFF1A1C1C),
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
                  Container(
                    width: 350,
                    padding: EdgeInsets.only(top: 24),
                    child: Container(
                      width: 350,
                      //height: 468,
                      padding: EdgeInsets.symmetric(
                        vertical: 24,
                        horizontal: 24,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFFFFFFFF),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 100,
                                child: Text(
                                  'Recent Activity',
                                  maxLines: 2,
                                  style: GoogleFonts.hankenGrotesk(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF1A1C1C),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: const Color(0xFFEEEEEE),
                                  ),
                                  child: Row(
                                    children: List.generate(filters.length, (
                                      index,
                                    ) {
                                      final isSelected = selectedIndex == index;

                                      return Expanded(
                                        child: TextButton(
                                          onPressed: () {
                                            setState(() {
                                              selectedIndex = index;
                                            });
                                          },
                                          style: TextButton.styleFrom(
                                            backgroundColor: isSelected
                                                ? const Color(0xFF1A1C1C)
                                                : Colors.transparent,
                                            minimumSize: Size.zero,
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 4,
                                              vertical: 12,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                          ),
                                          child: Text(
                                            filters[index],
                                            maxLines: 1,
                                            style: GoogleFonts.hankenGrotesk(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: isSelected
                                                  ? Colors.white
                                                  : const Color(0xFF1A1C1C),
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 24),
                          recentTransaction(
                            title: 'Dinner Split',
                            subtitle: 'Oct 24, 2024',
                            icon: Icons.restaurant,
                            amountext: r'-$45.00',
                            text: 'Dining',
                            title2: 'Settled',
                          ),
                          SizedBox(height: 12),
                          recentTransaction(
                            title: 'Dinner Split',
                            subtitle: 'Oct 24, 2024',
                            icon: Icons.restaurant,
                            amountext: r'-$45.00',
                            text: 'Dining',
                            title2: 'Settled',
                          ),
                          SizedBox(height: 12),

                          recentTransaction(
                            title: 'Dinner Split',
                            subtitle: 'Oct 24, 2024',
                            icon: Icons.restaurant,
                            amountext: r'-$45.00',
                            text: 'Dining',
                            title2: 'Settled',
                          ),
                          SizedBox(height: 12),
                          recentTransaction(
                            title: 'Dinner Split',
                            subtitle: 'Oct 24, 2024',
                            icon: Icons.restaurant,
                            amountext: r'-$45.00',
                            text: 'Dining',
                            title2: 'Settled',
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
                      //height: 325,
                      padding: EdgeInsets.symmetric(
                        vertical: 24,
                        horizontal: 24,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFFFFFFFF),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Payment & Routing Details',
                            style: GoogleFonts.hankenGrotesk(
                              color: Color(0xFF1A1C1C),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 24),
                          Container(
                            width: 302,
                            decoration: BoxDecoration(
                              color: Color(0xFFF3F3F4),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: ListTile(
                              leading: Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEEEE),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Icon(Icons.smartphone),
                              ),
                              title: Text(
                                'Mobile Number',
                                style: GoogleFonts.hankenGrotesk(
                                  fontSize: 12,
                                  color: Color(0xFF5E5E5E),
                                ),
                              ),
                              subtitle: Text(
                                '+1 (555) 019-2849',
                                style: GoogleFonts.jetBrainsMono(
                                  fontSize: 12,
                                  color: Color(0xFF5E5E5E),
                                ),
                              ),
                              trailing: Icon(
                                Icons.content_copy,
                                color: Color(0xFF006D33),
                              ),
                            ),
                          ),
                          SizedBox(height: 12),
                          Container(
                            width: 302,
                            decoration: BoxDecoration(
                              color: Color(0xFFF3F3F4),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: ListTile(
                              leading: Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEEEE),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Icon(Icons.account_balance),
                              ),
                              title: Text(
                                'Mobile Number',
                                style: GoogleFonts.hankenGrotesk(
                                  fontSize: 12,
                                  color: Color(0xFF5E5E5E),
                                ),
                              ),
                              subtitle: Text(
                                'sarah.jenkins@paydirect',
                                style: GoogleFonts.jetBrainsMono(
                                  fontSize: 12,
                                  color: Color(0xFF5E5E5E),
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              trailing: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Color(0x10006D33),
                                  shape: RoundedRectangleBorder(
                                    //borderRadius: BorderRadius.circular()
                                  ),
                                ),
                                child: Text(
                                  'Instant',
                                  style: GoogleFonts.hankenGrotesk(
                                    color: Color(0xFF006D33),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 24),
                          Container(
                            width: 302,
                            decoration: BoxDecoration(
                              color: Color(0xFFF3F3F4),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: ListTile(
                              leading: Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEEEE),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Icon(
                                  Icons.lock,
                                  color: Color(0xFF006D33),
                                ),
                              ),
                              subtitle: Text(
                                'Bank-Grade 256-bit Encrypted Connection •Mutual transfers protected by CashPay FraudShield',
                                style: GoogleFonts.hankenGrotesk(
                                  fontSize: 12,
                                  color: Color(0xFF5E5E5E),
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                      ),
                      fixedSize: Size(350,76),
                      backgroundColor: Color(0xFFFAE500)

                    ),
                    icon: Icon(Icons.send),
                    label: Text(
                      'Send Message',
                      style: GoogleFonts.hankenGrotesk(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1F1C00),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
