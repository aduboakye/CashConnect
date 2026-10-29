import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CashpayRequestPage extends StatefulWidget {
  const CashpayRequestPage({super.key});

  @override
  State<CashpayRequestPage> createState() => _CashpayRequestPageState();
}

class _CashpayRequestPageState extends State<CashpayRequestPage> {
  final List<String> amount = [r'+$10', r'+$25', r'+50', r'+$100', 'clear'];
  final List<String> option = [
    '🍕 Dinner',
    '⚡ Utilities',
    '🚗 Ride split',
    '🎉 Party',
  ];

  Widget reason() {
    return Container(
      padding: const EdgeInsets.all(12),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(option.length, (index) {
            return TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xFFEEEEEE),
                foregroundColor: const Color(0xFF1A1C1C),
              ),
              child: Text(option[index]),
            );
          }),
        ),
      ),
    );
  }



  int? selectedamount;
  Widget amountButton({required String text, required int index}) {
    final bool isSelected = selectedamount == index;

    return TextButton(
      onPressed: () {

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
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, color: Color(0xFF1A1C1C)),
        ),
        title: Text(
          'Request Money',
          style: GoogleFonts.hankenGrotesk(
            color: Color(0xFF1A1C1C),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        actionsPadding: EdgeInsets.symmetric(horizontal: 20),
        actions: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xFFA1D8C3),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.lock, color: Color(0xFF006D33)),
            ),
          ),
          SizedBox(width: 5),
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xFF006D33),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.person, color: Color(0xFFFFFFFF)),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  width: 390,
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 8,
                    bottom: 4,
                  ),
                  child: Container(
                    width: 350,
                    // height: 33,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0x17006D33),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.bolt, color: Color(0xFF006D33)),
                          label: Text(
                            'Zero Fee • Instant Request',
                            style: GoogleFonts.hankenGrotesk(
                              fontSize: 12,
                              color: Color(0xFF3C4A3D),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          width: 59,
                          height: 21,
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            'ACTIVE',
                            style: GoogleFonts.jetBrainsMono(
                              fontSize: 11,
                              color: Color(0xFF006D33),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 390,
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 12,
                    bottom: 0,
                  ),
                  child: Container(
                    width: 350,
                    height: 78,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xFFFFFFFF),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Stack(
                              children: [
                                ClipRRect(
                                  child: Image.asset('images/border.png'),
                                  borderRadius: BorderRadiusGeometry.circular(
                                    12,
                                  ),
                                ),
                                Positioned(
                                  left: 35,
                                  bottom: 0,
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF006D33),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Icon(
                                      Icons.check,
                                      size: 12.79,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 5),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'REQUESTING FROM',
                                  style: GoogleFonts.hankenGrotesk(
                                    fontSize: 11,
                                    color: Color(0xFF5E5E5E),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Flexible(
                                  child: Text(
                                    'Sarah Jenkins',
                                    style: GoogleFonts.hankenGrotesk(
                                      fontSize: 16,
                                      color: Color(0xFF1A1C1C),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Text(
                                    '@sarahj • Verified Contact',
                                    style: GoogleFonts.hankenGrotesk(
                                      fontSize: 11,
                                      color: Color(0xFF3C4A3D),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          width: 70,
                          height: 28,
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            'Change',
                            style: GoogleFonts.hankenGrotesk(
                              fontSize: 12,
                              color: Color(0xFF006D33),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 390,
                  padding: EdgeInsets.only(top: 16),
                  child: Container(
                    width: 390,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xFFF3F3F4),
                          ),
                          width: 300.28,

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.account_balance_wallet,
                                color: Color(0xFF006D33),
                              ),
                              Text('Deposit to Main Checking (•••• 4921)'),
                            ],
                          ),

                        ),
                        SizedBox(height: 6),
                        SizedBox(
                            width: 180,
                            height: 56,
                            child: TextField(
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 48,
                                fontWeight: FontWeight.bold,
                              ),

                             // controller: amountController,
                              readOnly: true,
                              keyboardType:
                              const TextInputType.numberWithOptions(
                                decimal: true,
                              ),
                              decoration: const InputDecoration(
                                prefixIcon: Icon(
                                  Icons.attach_money,
                                  size: 48,
                                ),
                                hintText: '0.00',
                              ),
                            ),

                        ),
                        SizedBox(height: 10),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(amount.length, (
                                index,
                                ) {
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
                ),
                Container(
                  width: 390,
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 16,
                    bottom: 0,
                  ),
                  child: Container(
                    width: 350,
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("WHAT'S THIS FOR?",style: GoogleFonts.hankenGrotesk(color: Color(0xFF5E5E5E),fontSize: 12),),
                            Container(
                              width: 85,
                              height: 21,
                              padding: EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xFFFFDAD6),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                'Mandatory',
                                style: GoogleFonts.hankenGrotesk(
                                  fontSize: 12,
                                  color: Color(0xFF93000A),
                                  fontWeight: FontWeight.bold,
                                ),

                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        SizedBox(
                          width: 355,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Dinner split & cocktails 🍕',
                              prefixIcon: const Icon(Icons.edit_note),

                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        reason(),
                      ],
                    ),
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
