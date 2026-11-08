import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SusucontributionPage extends StatelessWidget {
  const SusucontributionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        title: TextButton.icon(
          onPressed: () {},
          iconAlignment: IconAlignment.end,
          icon: Icon(Icons.lock_outline, color: Color(0xFF006D33), size: 16),
          label: Text(
            'Contribute To Group',
            style: GoogleFonts.hankenGrotesk(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1A1C1C),
            ),
          ),
        ),
        actionsPadding: EdgeInsets.symmetric(horizontal: 20),
        actions: [
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xFF006D33),
            ),
            child: Icon(
              Icons.person_outline,
              color: Color(0xFFFFFFFF),
              size: 15,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 390,
                padding: EdgeInsets.only(
                  right: 20,
                  left: 20,
                  bottom: 8,
                  top: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          TextButton.icon(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              //fixedSize: Size(104, 20),
                              backgroundColor: Color(0x4DE2E2E2),
                              shape: StadiumBorder(
                                // borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            icon: Icon(
                              Icons.circle,
                              color: Color(0xFF006D33),
                              size: 12,
                            ),
                            label: Text(
                              'POOL LIVE',
                              style: GoogleFonts.jetBrainsMono(
                                color: Color(0xFF006D33),
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Text(
                            'Due Nov 30',
                            style: GoogleFonts.jetBrainsMono(
                              color: Color(0xFF5E5E5E),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    TextButton.icon(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        //fixedSize: Size(104, 20),
                        backgroundColor: Color(0x4DE2E2E2),
                        shape: StadiumBorder(
                          // borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      icon: Icon(
                        Icons.groups,
                        color: Color(0xFF006D33),
                        size: 20,
                      ),
                      label: Text(
                        '4 Members',
                        style: GoogleFonts.jetBrainsMono(
                          color: Color(0xFF006D33),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: RadialGradient(
                      radius: 1.2,
                      stops: [0.0, 1.0],

                      center: Alignment.centerRight,
                      colors: [Color(0xFF2F3131), Color(0xFF2F3131)],
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Color(0x4DE2E2E2),
                            ),
                            child: Icon(
                              Icons.apartment_outlined,
                              color: Color(0xFF63FF94),
                            ),
                          ),
                          SizedBox(width: 4),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ACTIVE GROUP',
                                style: GoogleFonts.jetBrainsMono(
                                  color: Color(0xFF63FF94),
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                'Roommates Suite 402',
                                style: GoogleFonts.hankenGrotesk(
                                  color: Color(0xFFF0F1F1),
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 8),
                          Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              color: Color(0x4DE2E2E2),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Icon(
                              Icons.info_outline,
                              color: Color(0xFFF0F1F1),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Container(
                        width: 302,
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0x4DE2E2E2),
                          borderRadius: BorderRadius.circular(4),
                        ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: 28,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      child: Container(
                                        height: 28,
                                        width: 28,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            12,
                                          ),
                                          color: Color(0xFF63FF94),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'SJ',
                                            style: GoogleFonts.hankenGrotesk(
                                              color: Color(0xFFFFFFFF),
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 20,
                                      child: Container(
                                        height: 28,
                                        width: 28,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            12,
                                          ),
                                          color: Color(0xFFCDBC00),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'ER',
                                            style: GoogleFonts.hankenGrotesk(
                                              color: Color(0xFFFFFFFF),
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                    Positioned(
                                      left: 40,
                                      child: Container(
                                        height: 28,
                                        width: 28,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            12,
                                          ),
                                          color: Color(0xFF006D33),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'YOU',
                                            style: GoogleFonts.hankenGrotesk(
                                              color: Color(0xFF00210B),
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 60,
                                      child: Container(
                                        height: 28,
                                        width: 28,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            12,
                                          ),
                                          color: Color(0x4DE2E2E2),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'MC',
                                            style: GoogleFonts.hankenGrotesk(
                                              color: Color(0xFFFFFFFF),
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color(0xFF63FF94),
                                  size: 6,
                                ),
                                Text(
                                  'Created by Sarah J.',
                                  style: GoogleFonts.jetBrainsMono(
                                    color: Color(0xFFE2E2E2),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Collected \$1,200.00',
                                  style: GoogleFonts.jetBrainsMono(
                                    color: Color(0xFFE2E2E2),
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  '66% Funded',
                                  style: GoogleFonts.jetBrainsMono(
                                    color: Color(0xFF63FF94),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            LinearProgressIndicator(
                              value: 0.66,
                              color: Color(0xFF29E376),
                              backgroundColor: Color(0xFF5E5E5E),
                              minHeight: 8,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            SizedBox(height: 4),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Target: \$1,800.00',
                                  style: GoogleFonts.jetBrainsMono(
                                    color: Color(0xFFE2E2E2),
                                    fontSize: 12,
                                  ),
                                ),

                                Text(
                                  '\$600.00 remaining',
                                  style: GoogleFonts.jetBrainsMono(
                                    color: Color(0xFF63FF94),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 302,
                        padding: EdgeInsets.symmetric(
                          horizontal: 2,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0x4DE2E2E2),
                          borderRadius: BorderRadius.circular(4),
                        ),

                        child: Row(
                          children: [
                            Icon(
                              Icons.verified_user_outlined,
                              color: Color(0xFF63FF94),
                              size: 20,
                            ),
                            Text(
                              'Your suggested split share is ',
                              style: GoogleFonts.jetBrainsMono(
                                color: Color(0xFFF0F1F1),
                                fontSize: 12,
                              ),
                            ),

                            Expanded(
                              child: Text(
                                '\$200.00',
                                style: GoogleFonts.jetBrainsMono(
                                  color: Color(0xFFF0F1F1),
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
              SizedBox(height: 24),
              Container(
                width: 350,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
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
                          'YOUR CONTRIBUTION',
                          style: GoogleFonts.jetBrainsMono(
                            color: Color(0xFF5E5E5E),
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: Size.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            backgroundColor: Color(0xFF8DAF9D),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          label: Text(
                            'USD • Zero Fee',
                            style: GoogleFonts.jetBrainsMono(
                              color: Color(0xFF006D33),
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.attach_money,
                                color: Color(0xFF5E5E5E),
                                size: 44,
                              ),
                              Expanded(
                                child: TextField(
                                  textAlign:
                                      TextAlign.center, // Horizontal center
                                  textAlignVertical: TextAlignVertical.center,
                                  keyboardType: TextInputType.numberWithOptions(
                                    decimal: true,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: '0.00',
                                    hintStyle: GoogleFonts.hankenGrotesk(
                                      color: Color(0xFF1A1C1C),
                                      fontSize: 44,
                                    ),

                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Pool Share Calculation • Exactly 1/9 target',
                            style: GoogleFonts.jetBrainsMono(
                              color: Color(0xFF5E5E5E),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24),
                    Container(
                      width: 302,
                      height: 210,
                      child: GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 1.5,
                        physics: NeverScrollableScrollPhysics(),

                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('+\$200'),
                                  Text(
                                    '\$250 Total',
                                    style: GoogleFonts.jetBrainsMono(
                                      color: Color(0xFF006D33),
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('+\$50'),
                                  Text(
                                    '\$250 Total',
                                    style: GoogleFonts.jetBrainsMono(
                                      color: Color(0xFF006D33),
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                              borderRadius: BorderRadius.circular(8),
                            ),

                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(child: Text('\$600')),
                                  Text(
                                    'Pay All Remainder',
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                              borderRadius: BorderRadius.circular(8),
                            ),

                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Custom'),
                                  Text(
                                    'Any value',
                                    style: GoogleFonts.jetBrainsMono(
                                      color: Color(0xFF006D33),
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24,),
              GestureDetector(
                onTap: (){},
                child: Container(
                  width: 350,
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 24),
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
                            'PAYMENT SOURCE',
                            style: GoogleFonts.jetBrainsMono(
                              color: Color(0xFF5E5E5E),
                              fontSize: 11,
                            ),
                          ),

                          Container(
                            child: Row(
                              children: [
                                Icon(Icons.bolt_outlined,color: Color(0xFF006D33),),
                                Text(
                                  'Instant',
                                  style: GoogleFonts.jetBrainsMono(
                                    color: Color(0xFF006D33),
                                    fontSize: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12,),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Color(0xFF2F3131),
                            ),
                            child: Icon(
                              Icons.account_balance,
                              color: Color(0xFF63FF94),
                            ),
                          ),
                          SizedBox(width: 4),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Chase Premier Checking . 4921',
                                style: GoogleFonts.hankenGrotesk(
                                  color: Color(0xFF1A1C1C),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                                ),

                              ),
                              Text(
                                'Avail: \$4,250.00 • No fees',
                                style: GoogleFonts.hankenGrotesk(
                                  color: Color(0xFF5E5E5E),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                         SizedBox(width: 4),
                          Flexible(
                            child: Container(
                              width: 66,
                              height: 32,
                              decoration: BoxDecoration(
                                color: Color(0x4DE2E2E2),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child:  Center(
                                child: Text(
                                  'Change',
                                  style: GoogleFonts.hankenGrotesk(
                                    color: Color(0xFF1A1C1C),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24,),
              Container(
                width: 350,
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFFFFFFFF),
                ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'NOTE & REFERENCE',
                      style: GoogleFonts.hankenGrotesk(
                          color: Color(0xFF5E5E5E),
                          fontSize: 11,
                        //  fontWeight: FontWeight.bold
                      ),

                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 8,horizontal: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Color(0xFFF3F3F4),
                      ),
                      child: Row(
                        children: [
                          Text('🏠',style: TextStyle(fontSize: 16),),
                          Text(
                            'Rent & Internet contribution (Nov)',
                            style: GoogleFonts.hankenGrotesk(
                              color: Color(0xFF1A1C1C),
                              fontSize: 16,
                            ),
                          ),
                          Icon(Icons.edit)
                        ],
                      )
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24,),
              Container(
                width: 350,
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFFF3F3F4),
                ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.account_tree_outlined,
                          color: Color(0xFF006D33),
                          size: 22,
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            'Pool Transparency Protocol',
                            style: GoogleFonts.hankenGrotesk(
                              color: Color(0xFF006D33),
                              fontSize: 16,
                              height: 1.4,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.check_circle_outline,
                          color: Color(0xFF006D33),
                          size: 16,
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            'Funds go directly into the locked Suite 402 Pool ledger balance.',
                            style: GoogleFonts.hankenGrotesk(
                              color: Color(0xFF3C4A3D),
                              fontSize: 12,
                              height: 1.4,
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 16),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.check_circle_outline,
                          color: Color(0xFF006D33),
                          size: 16,
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            'Instant settlement with \$0.00 service or transfer costs.',
                            style: GoogleFonts.hankenGrotesk(
                              color: Color(0xFF3C4A3D),
                              fontSize: 12,
                              height: 1.4,
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 16),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.check_circle_outline,
                          color: Color(0xFF006D33),
                          size: 16,
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            'Sarah, Elena, and Michael receive immediate receipt updates in-app.',
                            style: GoogleFonts.hankenGrotesk(
                              color: Color(0xFF3C4A3D),
                              fontSize: 12,
                              height: 1.4,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ),
              SizedBox(height: 24,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Icon(
                        Icons.verified_outlined,
                        color: Color(0xFF006D33),
                     ),
                    SizedBox(width: 4),

                        Expanded(
                          child: Text(
                            '256-Bit Bank-Grade Encryption • FDIC Insured Partner Bank',
                            style: GoogleFonts.jetBrainsMono(
                              color: Color(0xFF5E5E5E),
                              fontSize: 11,
                            ),
                          ),
                        ),


                  ],
                ),
              ),
              SizedBox(height: 24,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Container(
                  height:120,
                  padding: EdgeInsets.symmetric(horizontal: 24,),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                  ),
                  child: Column(
                    children: [
                      SafeArea(
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward,color: Colors.black,),
                            iconAlignment: IconAlignment.end,
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(350, 56),
                              backgroundColor: Color(0xFFFAE500),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            label: Text(
                              'Send \$200.00 to Group Pool',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),

                            ),
                          ),
                        ),
                      ),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text(
                            'Request Due Date Extension',
                            style: TextStyle(
                              color: Color(0xFF5E5E5E),
                              fontSize: 11,
                            ),
                          ),
                          Text(
                            'Decline or Leave Pool',
                            style: TextStyle(
                              color: Color(0xFFBA1A1A),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      )
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
