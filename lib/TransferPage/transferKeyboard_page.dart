import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransferkeyboardPage extends StatefulWidget {
  const TransferkeyboardPage({super.key});

  @override
  State<TransferkeyboardPage> createState() => _TransferkeyboardPageState();
}

class _TransferkeyboardPageState extends State<TransferkeyboardPage> {
  final TextEditingController amountController = TextEditingController();

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
                onPressed: () {
                  // Remove commas before editing the number.
                  String currentText = amountController.text.replaceAll(',', '');
                  String nextText;

                  if (key == '⌫') {
                    if (currentText.isEmpty) return;

                    nextText = currentText.substring(0, currentText.length - 1);
                  } else if (key == '.') {
                    // Only one decimal point is allowed.
                    if (currentText.contains('.')) return;

                    nextText = currentText.isEmpty ? '0.' : '$currentText.';
                  } else {
                    final parts = currentText.split('.');

                    if (parts.length == 2) {
                      // Maximum two decimal digits.
                      if (parts[1].length >= 2) return;
                    } else {
                      if (currentText == '0') {
                        currentText = '';
                      }

                      // Maximum six whole-number digits.
                      if (currentText.length >= 6) return;
                    }

                    nextText = currentText + key;
                  }

                  // Separate the whole number from the decimal digits.
                  final parts = nextText.split('.');
                  final wholeNumber = parts[0];

                  // Insert commas every three digits.
                  String formatted = '';

                  for (int i = 0; i < wholeNumber.length; i++) {
                    if (i > 0 && (wholeNumber.length - i) % 3 == 0) {
                      formatted += ',';
                    }

                    formatted += wholeNumber[i];
                  }

                  // Preserve the decimal point, even before cents are entered.
                  if (parts.length == 2) {
                    formatted += '.${parts[1]}';
                  }

                  setState(() {
                    amountController.value = TextEditingValue(
                      text: formatted,
                      selection: TextSelection.collapsed(
                        offset: formatted.length,
                      ),
                    );

                    selectedamount = null;
                  });
                },
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

  int? selectedamount;
  final List<String> amount = [r'+$10', r'+$25', r'+50', r'+$100', 'clear'];
  Widget amountButton({required String text, required int index}) {
    final bool isSelected = selectedamount == index;

    return TextButton(
      onPressed: () {
        setState(() {
          if (text.toLowerCase() == 'clear') {
            amountController.clear();
            selectedamount = null;
          } else {
            selectedamount = index;

            amountController.text = text
                .replaceAll('+', '')
                .replaceAll(r'$', '');
          }
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
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, color: Color(0xFF1A1C1C)),
        ),
        title: Container(
          width: 210,
          //height: 41,
          padding: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Text(
                'Enter Amount',
                style: GoogleFonts.hankenGrotesk(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1A1C1C),
                ),
              ),
              TextButton.icon(
                onPressed: null,
                icon: Icon(Icons.lock, color: Color(0xFF006D33)),
                label: Text(
                  '256-BIT ENCRYPTED',
                  style: GoogleFonts.hankenGrotesk(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF006D33),
                  ),
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
        // leadingWidth: 20,
        actionsPadding: EdgeInsets.symmetric(horizontal: 20),
        actions: [
          Container(
            width: 80,

            child: Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.info_rounded)),
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFF006D33),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.person, color: Colors.white, size: 15),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: ShaderMask(
                      blendMode: BlendMode.dstIn,
                      shaderCallback: (Rect bounds) {
                        return const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.white,
                            Colors.white,
                            Colors.transparent,
                          ],
                          stops: [0.0, 0.6, 1.0],
                        ).createShader(bounds);
                      },
                      child: Container(
                        width: double.infinity,
                        height: 300,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            stops: const [0.0, 0.6, 1.0],
                            colors: [
                              const Color(0xFF006D33).withValues(alpha: 0.2),
                              const Color(0xFF12CA68).withValues(alpha: 0.2),
                              const Color(0xFF21E47D).withValues(alpha: 0.2),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 390,

                    // height: 400,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(
                            vertical: 24,
                            horizontal: 24,
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                //height: 60,
                                padding: EdgeInsets.only(
                                  top: 6,
                                  bottom: 6,
                                  left: 6,
                                  right: 16,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xFFFFFFFF),
                                ),
                                child: ListTile(
                                  leading: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset('images/Border-2.png'),
                                  ),
                                  title: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Flexible(
                                            child: FittedBox(
                                              fit: BoxFit.scaleDown,
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Sarah Jenkins',
                                                style:
                                                    GoogleFonts.hankenGrotesk(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: const Color(
                                                        0xFF1A1C1C,
                                                      ),
                                                    ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 6),
                                          const Icon(
                                            Icons.verified,
                                            size: 18,
                                            color: Color(0xFF006D33),
                                          ),
                                        ],
                                      ),

                                      const SizedBox(
                                        height: 2,
                                      ), // Gap between name and username

                                      Text(
                                        '@sarahj',
                                        style: GoogleFonts.jetBrainsMono(
                                          fontSize: 14,
                                          color: const Color(0xFF5E5E5E),
                                        ),
                                      ),
                                    ],
                                  ),
                                  trailing: FittedBox(
                                    child: TextButton.icon(
                                      onPressed: () {},
                                      style: TextButton.styleFrom(
                                        backgroundColor: Color(0xFFF3F3F4),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            12,
                                          ),
                                        ),
                                      ),
                                      icon: Icon(Icons.bolt),
                                      label: Text(
                                        'Instant',
                                        style: GoogleFonts.hankenGrotesk(
                                          fontSize: 12,
                                          color: Color(0xFF3C4A3D),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        TextButton.icon(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.account_balance_wallet,
                                            color: Color(0xFF5E5E5E),
                                          ),
                                          label: Text(
                                            'Cash Balance:',
                                            style: GoogleFonts.hankenGrotesk(
                                              fontSize: 12,
                                              color: Color(0xFF5E5E5E),
                                            ),
                                          ),
                                        ),

                                        Text(
                                          r'$4,250.00',
                                          style: GoogleFonts.hankenGrotesk(
                                            fontSize: 12,
                                            color: Color(0xFF5E5E5E),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  TextButton.icon(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.circle,
                                      color: Color(0xFF006D33),
                                      size: 12,
                                    ),
                                    label: Text(
                                      'Zero fee',
                                      style: GoogleFonts.hankenGrotesk(
                                        fontSize: 12,
                                        color: Color(0xFF006D33),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              ShaderMask(
                                blendMode: BlendMode.dstIn,
                                shaderCallback: (Rect bounds) {
                                  return const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.white,
                                      Colors.white,
                                      Colors.transparent,
                                    ],
                                    stops: [0.0, 0.6, 1.0],
                                  ).createShader(bounds);
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withValues(
                                          alpha: 0.03,
                                        ),
                                        blurRadius: 12,
                                        spreadRadius: 2,
                                        offset: const Offset(0, 2),
                                      ),
                                    ],

                                    borderRadius: BorderRadius.circular(12),
                                    gradient: LinearGradient(
                                      //begin: Alignment.topRight,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Color(0xFFFFFFFF),
                                        Colors.white,
                                        // Colors.white,
                                        Colors.white.withValues(alpha: 0.0),

                                        //Colors.transparent.withValues(alpha: -2.2),
                                      ],
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'ENTER TRANSFER AMOUNT',
                                        style: GoogleFonts.hankenGrotesk(
                                          fontSize: 12,
                                          color: Color(0xFF5E5E5E),
                                        ),
                                      ),
                                      SizedBox(height: 6),
                                      Expanded(
                                        child: SizedBox(
                                          width: 180,
                                          height: 40,
                                          child: TextField(
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 32,
                                              fontWeight: FontWeight.bold,
                                            ),

                                            controller: amountController,
                                            readOnly: true,
                                            keyboardType:
                                                const TextInputType.numberWithOptions(
                                                  decimal: true,
                                                ),
                                            decoration: const InputDecoration(
                                              prefixIcon: Icon(
                                                Icons.attach_money,
                                              ),
                                              hintText: '0.00',
                                            ),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          TextButton.icon(
                                            onPressed: null,
                                            iconAlignment: IconAlignment.end,
                                            icon: Icon(
                                              Icons.circle,
                                              color: Color(0xFF5E5E5E),
                                              size: 12,
                                            ),
                                            label: Text(
                                              'USD',
                                              style: GoogleFonts.jetBrainsMono(
                                                fontSize: 14,
                                                color: Color(0xFF5E5E5E),
                                              ),
                                            ),
                                          ),
                                          TextButton.icon(
                                            onPressed: null,
                                            //iconAlignment: IconAlignment.end,
                                            icon: Container(
                                              width: 15,
                                              height: 15,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF006D33),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Icon(
                                                Icons.check,
                                                color: Colors.white,
                                                size: 12,
                                              ),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Color(
                                                0xFFC6EADC,
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadiusGeometry.circular(
                                                      12,
                                                    ),
                                              ),
                                            ),
                                            label: Text(
                                              'No conversion fees',
                                              style: GoogleFonts.jetBrainsMono(
                                                fontSize: 14,
                                                color: Color(0xFF006D33),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
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
                              SizedBox(height: 10),
                              amountKeypad(),
                              SizedBox(height: 10),
                              ElevatedButton.icon(
                                icon: Icon(
                                  Icons.arrow_forward,
                                  color: Color(0xFF5E5E5E),
                                ),
                                iconAlignment: IconAlignment.end,
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(350, 56),
                                  backgroundColor: Color(0xFFE8E8E8),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                onPressed: () {},

                                label: Text(
                                  'Pay Sarah (\$${amountController.text.isEmpty ? '0.00' : amountController.text})',                                  style: GoogleFonts.hankenGrotesk(
                                    color: Color(0xFF5E5E5E),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              TextButton.icon(
                                onPressed: () {},
                                icon: Icon(Icons.shield,color: Color(0xFF006D33),),
                                label: Text(
                                  'FDIC Insured • Bank-grade 256-bit encryption',
                                  style: GoogleFonts.hankenGrotesk(
                                    color: Color(0xFF5E5E5E),
                                    fontSize: 12,
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
            ],
          ),
        ),
      ),
    );
  }
}
