import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dotted_border/dotted_border.dart';

class AddBatchtransfer extends StatefulWidget {
  const AddBatchtransfer({super.key});

  @override
  State<AddBatchtransfer> createState() => _AddBatchtransferState();
}

class _AddBatchtransferState extends State<AddBatchtransfer> {
  String? selectedRecipientName;
  int? selectedMember;
  int? selectedcashpayMember;
  int? selectedTransfer;

  Widget recent({
    required String title,
    required String subtitle,
    required String subtitle1,
    required bool isSelected,
    required text,
    required String image,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        width: 350,
        // height: 200,
        padding: EdgeInsetsGeometry.symmetric(vertical: 12, horizontal: 12),
        /* decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? const Color(0xFF006D33) : Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(12),
        ),*/
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            Flexible(
              child: Container(
                width: double.infinity,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: isSelected
                              ? const Color(0xFF006D33)
                              : Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(12),
                            child: Image.asset(image),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Icon(
                              isSelected
                                  ? Icons.check_circle
                                  : Icons.circle,
                              size: 20,
                              color: isSelected
                                  ? Color(0xFF00D66B)
                                  : Color(0xFFC6C6C6),
                            ),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(width: 5),
                    Flexible(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,

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
                                Icon(icon, color: Colors.green, size: 15),
                              ],
                            ),
                          ),

                          Container(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Text(
                                    subtitle,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.jetBrainsMono(
                                      fontSize: 12,
                                      color: Color(0xFF1A1C1C),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 4),
                                Expanded(
                                  child: Text(
                                    subtitle1,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.jetBrainsMono(
                                      fontSize: 12,
                                      color: Color(0xFF1A1C1C),
                                    ),
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
                  ],
                ),
              ),
            ),
            SizedBox(width: 10),
            TextButton.icon(
              onPressed: onTap,
              style: TextButton.styleFrom(
                backgroundColor: isSelected
                    ? Color(0xFF006D33)
                    : Color(0xFFE8E8E8),
                foregroundColor: isSelected
                    ? Colors.white
                    : Color(0xFF1A1C1C),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              icon: Icon(
                isSelected ? Icons.check : Icons.add,
              ),
              label: Text(
                isSelected ? 'Added' : 'Add',
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<String> option = ['All', 'Frequent', 'Recent', 'Favorites'];
  Widget Optionmember() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(option.length, (index) {
        return TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
            ),
            backgroundColor: Color(0xFFE6F4ED),
          ),
          child: Text(option[index]),
        );
      }),
    );
  }

  Widget Addmember({required String name}) {
    return Container(
      width: 190,
      decoration: BoxDecoration(
        color: Color(0xFFE6F4ED),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 8),
        horizontalTitleGap: 4,
        minLeadingWidth: 20,
        dense: true,

        leading: Icon(Icons.person_outline, size: 20),

        title: Text(
          name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.beVietnamPro(
            color: Color(0xFF0C1D14),
            fontSize: 14,
          ),
        ),

        trailing: IconButton(
          onPressed: () {},
          icon: Icon(Icons.close_outlined, size: 18),
          padding: EdgeInsets.zero,
          constraints: BoxConstraints(minWidth: 24, minHeight: 24),
        ),
      ),
    );
  }

  Widget suggestionmembers({
    required String titlename,
    required String subtitlename,
    required String descriptionname,
    required String image,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
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
              Stack(
                children: [
                  ClipRRect(
                    child: Image.asset(image),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Icon(
                      Icons.circle,
                      color: Color(0xFF00D66B),
                      size: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 30),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xFFEEEEEE),
                  visualDensity: VisualDensity.compact,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  descriptionname,
                  style: GoogleFonts.hankenGrotesk(
                    color: Color(0xFF3C4A3D),
                    fontSize: 11,
                  ),
                ),
              ),
            ],
          ),
          Text(
            titlename,
            style: GoogleFonts.hankenGrotesk(
              fontSize: 14,
              color: Color(0xFF1A1C1C),
            ),
          ),
          Text(
            subtitlename,
            style: GoogleFonts.hankenGrotesk(
              fontSize: 12,
              color: Color(0xFF6C7B6C),
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFEEEEEE),
              fixedSize: Size(147, 28),
              shape: RoundedRectangleBorder(),
            ),
            icon: Icon(Icons.add, color: Color(0xFF1A1C1C)),
            label: Text(
              'add',
              style: GoogleFonts.hankenGrotesk(
                fontSize: 12,
                color: Color(0xFF1A1C1C),
                fontWeight: FontWeight.bold,
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
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 120,
          padding: EdgeInsets.only(right: 16, left: 16, top: 16),
          decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
          child: Column(
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward, color: Color(0xFF1F1C00)),
                iconAlignment: IconAlignment.end,
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(350, 56),
                  backgroundColor: Color(0xFFFAE500),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                label: Text(
                  r'Add Selected to Batch (3)',
                  style: GoogleFonts.hankenGrotesk(
                    color: Color(0xFF1F1C00),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.shield, color: Color(0xFF006D33)),
                label: Text(
                  '256-Bit Bank-Grade P2P Encryption · Zero Transfer Fee',
                  style: GoogleFonts.hankenGrotesk(
                    fontSize: 11,
                    color: Color(0xFF3C4A3D),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Color(0xFFECEFEF),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        top: 16,
                        right: 16,
                        left: 16,
                        bottom: 8,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_back),
                                ),
                                Text(
                                  'Add to Batch',
                                  style: GoogleFonts.beVietnamPro(
                                    fontSize: 18,
                                    color: Color(0xFF0C1D14),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Text(
                            '3 Selected',
                            style: GoogleFonts.beVietnamPro(
                              fontSize: 16,
                              color: Color(0xFF45A173),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 16,
                      ),
                      width: double.infinity,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 20,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFCDEADB),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Batch Total: \$355.00',
                              style: GoogleFonts.beVietnamPro(
                                fontSize: 16,
                                color: Color(0xFF0C1D14),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Adding Recipients · 3 / 20 Max',
                              style: GoogleFonts.beVietnamPro(
                                fontSize: 16,
                                color: Color(0xFF45A173),
                                //fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 15),
                            Row(
                              children: [
                                Text(
                                  'View Details',
                                  style: GoogleFonts.beVietnamPro(
                                    fontSize: 14,
                                    color: Color(0xFF0C1D14),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_forward,
                                    color: Color(0xFF0C1D14),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      child: SizedBox(
                        width: 356,
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText:
                                'Search by name, @cashtag, phone, or email...',
                            hintStyle: TextStyle(color: Color(0xFF45A173)),
                            fillColor: Color(0xFFE6F4ED),
                            filled: true,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Optionmember(),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Addmember(name: 'Sarah Jenkins'),
                            SizedBox(width: 8),
                            Addmember(name: 'John Smith'),
                            SizedBox(width: 8),
                            Addmember(name: 'Michael Brown'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
                child: Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.bolt_outlined, color: Color(0xFF006D33)),
                        Text(
                          'Quick Scan & Voice\nEntry',
                          style: GoogleFonts.hankenGrotesk(
                            fontSize: 16,
                            color: Color(0xFF3C4A3D),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 8),
                    TextButton.icon(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFFEEEEEE),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),

                      icon: Icon(
                        Icons.mic_none_outlined,
                        color: Color(0xFF006D33),
                      ),
                      label: Text(
                        'Voice',
                        style: GoogleFonts.hankenGrotesk(
                          fontSize: 16,
                          color: Color(0xFF1A1C1C),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(width: 8),

                    TextButton.icon(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFFEEEEEE),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),

                      icon: Icon(
                        Icons.qr_code_scanner,
                        color: Color(0xFF006D33),
                      ),
                      label: Text(
                        'Scan\nQR',
                        style: GoogleFonts.hankenGrotesk(
                          fontSize: 16,
                          color: Color(0xFF1A1C1C),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.auto_awesome),
                              Text(
                                'Smart Suggestions',
                                style: GoogleFonts.hankenGrotesk(
                                  fontSize: 14,
                                  color: Color(0xFF1A1C1C),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Based on recent splits',
                          style: GoogleFonts.hankenGrotesk(
                            fontSize: 16,
                            color: Color(0xFF6C7B6C),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        suggestionmembers(
                          titlename: 'Marcus Vance',
                          subtitlename: '@marcus_v',
                          descriptionname: '9x Split',
                          image: 'images/border.png',
                        ),
                        SizedBox(width: 12),
                        suggestionmembers(
                          titlename: 'Marcus Vance',
                          subtitlename: '@marcus_v',
                          descriptionname: 'Shared Flat',
                          image: 'images/border.png',
                        ),
                      ],
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
                          'Recent Contacts',
                          style: GoogleFonts.hankenGrotesk(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1A1C1C),
                          ),
                        ),
                        Text(
                          'See All (14)',
                          style: GoogleFonts.hankenGrotesk(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF006D33),
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
                      isSelected: selectedMember == 0,
                      // First member

                      onTap: () {
                        setState(() {
                          selectedMember = selectedMember == 0 ? null : 0;
                          selectedcashpayMember = null;
                          selectedRecipientName =
                          selectedMember == 0 ? 'Sarah' : null;
                        });
                      },
                    ),
                    recent(
                      title: 'Sarah Jenkins',
                      subtitle: '@mchen',
                      text: 'Instant ACH Linked • Priority Payee',
                      image: 'images/cashpaym1.png',
                      icon: Icons.verified,
                      subtitle1: 'chloe.b@design.io',
                        // Second member
                        isSelected: selectedMember == 2,
                        onTap: () {
                          setState(() {
                            selectedMember = selectedMember == 2 ? null : 2;
                            selectedcashpayMember = null;
                            selectedRecipientName =
                            selectedMember == 2 ? 'Sarah' : null;
                          });
                        },
                    ),
                    recent(
                      title: 'Sarah Jenkins',
                      subtitle: '@mchen',
                      text: 'Instant ACH Linked • Priority Payee',
                      image: 'images/cashpaym1.png',
                      icon: Icons.verified,
                      subtitle1: 'chloe.b@design.io',
                      // Third member
                      isSelected: selectedMember == 1,
                      onTap: () {
                        setState(() {
                          selectedMember = selectedMember == 1 ? null : 1;
                          selectedcashpayMember = null;
                          selectedRecipientName =
                          selectedMember == 1 ? 'Sarah' : null;
                        });
                      },
                    ),
                    recent(
                      title: 'Sarah Jenkins',
                      subtitle: '@mchen',
                      text: 'Instant ACH Linked • Priority Payee',
                      image: 'images/cashpaym1.png',
                      icon: Icons.verified,
                      subtitle1: 'chloe.b@design.io',
                      // Fourth member
                      isSelected: selectedMember == 3,
                      onTap: () {
                        setState(() {
                          selectedMember = selectedMember == 3 ? null : 3;
                          selectedcashpayMember = null;
                          selectedRecipientName =
                          selectedMember == 3 ? 'Sarah' : null;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 24,
                  right: 16,
                  left: 16,
                  bottom: 16,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Icon(
                              Icons.person_add_alt,
                              color: Color(0xFF006D33),
                            ),
                          ),
                          SizedBox(width: 5),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Can't find them on CashPay?",
                                style: GoogleFonts.hankenGrotesk(
                                  color: Color(0xFF1A1C1C),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                "Invite via phone number or email link to receive\nfunds instantly.",
                                style: GoogleFonts.hankenGrotesk(
                                  color: Color(0xFF6C7B6C),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      DottedBorder(
                        options: RoundedRectDottedBorderOptions(
                          radius: Radius.circular(12),
                          dashPattern: [8, 4],
                          strokeWidth: 2,
                          color: Color(0xFF6C7B6C),
                        ),
                        child: Container(
                          width: 322,
                          height: 38,
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.add_call, color: Color(0xFF006D33)),
                              Text(
                                '+ Enter Mobile Number or Email',
                                style: GoogleFonts.hankenGrotesk(
                                  color: Color(0xFF1A1C1C),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 12),
                      Container(
                        width: 322,
                        height: 48,
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFF3F3F4),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //Icon(Icons.call,color: Color(0xFF006D33),),
                            Container(
                              child: Row(
                                children: [
                                  Icon(Icons.link, color: Color(0xFF6C7B6C)),
                                  Text(
                                    'cashpay.me/invite/batch-join',
                                    style: GoogleFonts.hankenGrotesk(
                                      color: Color(0xFF1A1C1C),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.content_copy_outlined,
                                color: Color(0xFF006D33),
                              ),
                              label: Text(
                                'Copy',
                                style: GoogleFonts.hankenGrotesk(
                                  color: Color(0xFF006D33),
                                  fontSize: 12,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
