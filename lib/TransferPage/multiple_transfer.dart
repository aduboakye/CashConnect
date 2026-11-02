//import 'package:cashconnect_fanancial_suite/TransferPage/multiple_transfer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MultipleTransfer extends StatefulWidget {
  const MultipleTransfer({super.key});

  @override
  State<MultipleTransfer> createState() => _MultipleTransferState();
}

class _MultipleTransferState extends State<MultipleTransfer> {
  Widget addmembers({
    required String image,
    required String nameTitle,
    required String namesubTitle,
    required String description,
    required String amount,
    required IconData verifiedmember,
    required IconData subicon,
  }) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xFFFFFFFF),
        border: Border.all()
      ),
      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 14),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Container(
                width: 200,
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    ClipRRect(
                      child: Image.asset(image),
                      borderRadius: BorderRadiusGeometry.circular(12),
                    ),
                    SizedBox(width: 6,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          nameTitle,
                          style: GoogleFonts.hankenGrotesk(
                            color: Color(0xFF1A1C1C),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          namesubTitle,
                          style: GoogleFonts.jetBrainsMono(
                            color: Color(0xFF5E5E5E),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Icon(Icons.verified, color: Color(0xFF006D33)),
                  ],
                ),
              ),

              Icon(Icons.close),
            ],
          ),
          SizedBox(height: 5,),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 222.43,
                    height: 38,
                    padding: EdgeInsets.only(left: 28,right: 12,top: 8,bottom: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color(0xFFF3F3F4),
                    ),
                    child: Text(
                      amount,
                      style: GoogleFonts.jetBrainsMono(fontSize: 14),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Container(
                      width: 97.74,
                      height: 34,
                      padding: EdgeInsets.symmetric(vertical: 8,horizontal:10 ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Color(0xFFF3F3F4),
                      ),
                      child: Row(
                        children: [
                          Icon(subicon),
                          Text(
                            description,
                            style: GoogleFonts.hankenGrotesk(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        title: Text(
          'Send to Multiple',
          style: GoogleFonts.hankenGrotesk(
            color: Color(0xFF1A1C1C),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              children: [
                Container(
                  width: 358,
                  decoration: BoxDecoration(
                    //  border: Border.all(),
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xFFE2EAE1),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.bolt_outlined,
                                color: Color(0xFF006D33),
                              ),
                              Text(
                                'BATCH TRANSFER',
                                style: GoogleFonts.hankenGrotesk(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF006D33),
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Send to 2 or more recipients simultaneously \nwith zero fees',
                            style: GoogleFonts.hankenGrotesk(
                              color: Color(0xFF3C4A3D),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      //IconButton(onPressed: (){}, icon: Icon(Icons.groups))
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xFF7DCFB5),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.groups),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  //height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFFEEEEEE),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          width: 175,
                          height: 32,
                          //padding: EdgeInsets.symmetric(vertical: 8),
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              'Custom Amounts',
                              style: GoogleFonts.hankenGrotesk(
                                color: Color(0XFF1A1C1C),
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: Container(
                          width: 175,
                          height: 32,
                          //padding: EdgeInsets.symmetric(vertical: 8),
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              'Equal Split',
                              style: GoogleFonts.hankenGrotesk(
                                color: Color(0XFF1A1C1C),
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'RECIPIENTS (3 ADDED)',
                            style: GoogleFonts.hankenGrotesk(
                              color: Color(0xFF3C4A3D),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            '3 OF 20 MAX',
                            style: GoogleFonts.libertinusMono(
                              color: Color(0xFF006D33),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12),
                addmembers(
                  image: 'images/border.png',
                  nameTitle: 'Sarah Jenkins',
                  namesubTitle: '@sarahj',
                  description: 'Split Dinner',
                  amount: r'$ 120.00',
                  verifiedmember: Icons.verified,
                  subicon: Icons.restaurant,
                ),
                SizedBox(height: 12),
                addmembers(
                  image: 'images/border.png',
                  nameTitle: 'Sarah Jenkins',
                  namesubTitle: '@sarahj',
                  description: 'Split Dinner',
                  amount: r'$ 120.00',
                  verifiedmember: Icons.verified,
                  subicon: Icons.restaurant,
                ),
                SizedBox(height: 12),
                addmembers(
                  image: 'images/border.png',
                  nameTitle: 'Sarah Jenkins',
                  namesubTitle: '@sarahj',
                  description: 'Split Dinner',
                  amount: r'$ 120.00',
                  verifiedmember: Icons.verified,
                  subicon: Icons.restaurant,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
