import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScaningPage extends StatefulWidget {
  const ScaningPage({super.key});

  @override
  State<ScaningPage> createState() => _ScaningPageState();
}

class _ScaningPageState extends State<ScaningPage> {
  final List<String> keypadKeys = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '.',
    '0',
    '⌫',
  ];
  bool showKeypad = false;
  Widget amountKeypad() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Color(0xFFF5F6F2),
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Heading.
          Row(
            children: [
              const Expanded(
                child: Text(
                  'Live Keypad • Instant Sync',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF3C4A3D),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    showKeypad = false;
                  });
                },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Hide', style: TextStyle(color: Color(0xFF3C4A3D))),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Color(0xFF3C4A3D),
                      size: 18,
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          // All twelve keypad buttons.
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: keypadKeys.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisExtent: 56,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
            ),
            itemBuilder: (context, index) {
              final key = keypadKeys[index];

              return TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFFFAFBF8),
                  foregroundColor: const Color(0xFF1A1C1C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(color: Color(0xFFE4E7E0)),
                  ),
                ),
                child: key == '⌫'
                    ? const Icon(Icons.backspace_outlined)
                    : Text(
                        key,
                        style: const TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
              );
            },
          ),
        ],
      ),
    );
  }

  final List<String> option = [
    'Coffee ☕',
    'Split Bill 🍕',
    'Groceries 🥑',
    'Thanks! ✨',
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
      onPressed: () {},
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

  final List<String> amount = [r'+$10', r'+$25', r'+50', r'+$100', 'clear'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
            SizedBox(width: 14),
            Text(
              'Scan & Pay',
              style: GoogleFonts.hankenGrotesk(
                color: Color(0xFF1A1C1C),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),

        leadingWidth: 200,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.info_rounded)),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.flashlight_on_outlined),
          ),
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xFF006D33),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person_outline,
                color: Color(0xFFFFFFFF),
                size: 16,
              ),
            ),
          ),
        ],
        actionsPadding: EdgeInsets.symmetric(horizontal: 8),
      ),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 390,
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
                  child: Container(
                    height: 44,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0x89CEF8E9),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.qr_code_2, size: 20),

                        const SizedBox(width: 6),

                        Expanded(
                          child: Text(
                            'QR Verified •\nInstant Rail',
                            maxLines: 2,
                            style: const TextStyle(fontSize: 11),
                          ),
                        ),

                        //const SizedBox(width: 4),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color(0xFF7DCFB5),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.center_focus_strong, size: 12),
                              SizedBox(width: 3),
                              Text('Camera', style: TextStyle(fontSize: 10)),
                            ],
                          ),
                        ),
                        const SizedBox(width: 6),

                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color(0xFF7DCFB5),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.calendar_view_week_rounded, size: 12),
                              SizedBox(width: 3),
                              Text('Barcode', style: TextStyle(fontSize: 10)),
                            ],
                          ),
                        ),

                        const SizedBox(width: 6),

                        const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.circle, color: Color(0xFF006D33), size: 8),
                            SizedBox(width: 3),
                            Text('Active', style: TextStyle(fontSize: 11)),
                          ],
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
                                  borderRadius: BorderRadiusGeometry.circular(12),
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
                          width: 80,
                          height: 28,
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child :Row(
                            children: [
                              Expanded(child: Icon(Icons.edit,size: 10,)),
                            FittedBox(
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
                          )
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
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                              "WHAT'S THIS FOR?",
                              style: GoogleFonts.hankenGrotesk(
                                color: Color(0xFF5E5E5E),
                                fontSize: 12,
                              ),
                            ),
                            /*Container(
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
                            ),*/
                          ],
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          width: 355,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Dinner & Matcha 🍵',
                              prefixIcon: const Icon(Icons.edit_note),

                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        reason(),
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
                              Text('SEND AMOUNT'),
                              Icon(Icons.lock, color: Color(0xFF006D33),size: 16,),
                            ],
                          ),
                        ),
                        SizedBox(height: 6),
                        SizedBox(
                          width: 200,
                          // height: 80,
                          child: Column(
                            children: [
                              TextField(
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
                                  prefixIcon: Icon(Icons.attach_money, size: 48),
                                  hintText: '0.00',
                                ),
                              ),
                              SizedBox(height: 5),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 5,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xFF006D33),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.bolt,
                                      size: 16,
                                      color: Colors.white,
                                    ),

                                    SizedBox(width: 4),

                                    Flexible(
                                      child: Text(
                                        'Zero Transfer Fee • Instant P2P',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.white,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
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
                ),
                SizedBox(height: 10,),
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          color: const Color(0xFF95C5B5),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(
                          Icons.account_balance,
                          size: 12.79,
                          color: Color(0xFF006D33),
                        ),
                      ),

                      const SizedBox(width: 8),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'FUNDS DIRECT DEPOSIT ',
                              style: GoogleFonts.hankenGrotesk(
                                fontSize: 11,
                                color: const Color(0xFF1A1C1C),
                                // fontWeight: FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 4),

                            Text(
                              'Chase Premier Checking (•••• 4921)',
                              style: GoogleFonts.hankenGrotesk(
                                fontSize: 12,
                                color: const Color(0xFF1A1C1C),
                                fontWeight: FontWeight.bold,
                              ),
                              softWrap: true,
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(width: 8),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.keyboard_arrow_down),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                amountKeypad(),
                SizedBox(height: 5,),
                ElevatedButton.icon(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(350,56),
                        backgroundColor: Color(0xFFFAE500),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                        )
                    ),
                    icon: Icon(Icons.arrow_forward),
                    iconAlignment: IconAlignment.end,
                    label: Text(r'Request $120.00 Now')),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.shield,color: Color(0xFF006D33),),
                  label: Text(
                    '256-Bit Bank Encryption • Instant Guaranteed Transfer',
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
      ),
    );
  }
}
