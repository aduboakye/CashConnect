import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cashpaytransferdashboard extends StatefulWidget {
  const Cashpaytransferdashboard({super.key});

  @override
  State<Cashpaytransferdashboard> createState() =>
      _CashpaytransferdashboardState();
}

class _CashpaytransferdashboardState extends State<Cashpaytransferdashboard> {
  Widget sendTransferButton() {
    return ValueListenableBuilder<TextEditingValue>(
      valueListenable: amountController,
      builder: (context, value, child) {
        final amount = double.tryParse(value.text.trim()) ?? 0;

        final validAmount = amount.isFinite && amount > 0;
        final hasRecipient = selectedRecipientName != null;
        final canContinue = validAmount && hasRecipient;

        final formattedAmount =
        validAmount ? amount.toStringAsFixed(2) : '0.00';

        final String buttonText;

        if (!hasRecipient) {
          buttonText = 'Select a recipient';
        } else if (!validAmount) {
          buttonText = 'Enter an amount';
        } else {
          buttonText =
          'Send \$$formattedAmount to $selectedRecipientName';
        }

        return Padding(
          padding: const EdgeInsetsGeometry.all(0),
          child: SizedBox(
            width: double.infinity,
            height: 60,
            child: TextButton.icon(
              onPressed: canContinue
                  ? () {
                // Add navigation to your review page here.
              }
                  : null,
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xFFFAE500),
                foregroundColor: const Color(0xFF1F1C00),
                disabledBackgroundColor: const Color(0xFFEEEEEE),
                disabledForegroundColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              icon: const Icon(Icons.arrow_forward),
              iconAlignment: IconAlignment.end,
              label: Text(
                buttonText,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.hankenGrotesk(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
  final List<String> keypadKeys = [
    '1', '2', '3',
    '4', '5', '6',
    '7', '8', '9',
    '.', '0', '⌫',
  ];
  bool showKeypad = false;
  Widget amountKeypad() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Color(0xFFF5F6F2),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
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
                    Text(
                      'Hide',
                      style: TextStyle(
                        color: Color(0xFF3C4A3D),
                      ),
                    ),
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
            gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisExtent: 56,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
            ),
            itemBuilder: (context, index) {
              final key = keypadKeys[index];

              return TextButton(
                onPressed: () {
                  pressKey(key);
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFFFAFBF8),
                  foregroundColor: const Color(0xFF1A1C1C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(
                      color: Color(0xFFE4E7E0),
                    ),
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
  void pressKey(String key) {
    String text = amountController.text;

    if (key == '⌫') {
      // Remove the last character.
      if (text.isNotEmpty) {
        text = text.substring(0, text.length - 1);
      }
    } else if (key == '.') {
      // Allow only one decimal point.
      if (!text.contains('.')) {
        text = text.isEmpty ? '0.' : '$text.';
      }
    } else {
      // Allow only two digits after the decimal point.
      if (text.contains('.') && text.split('.')[1].length >= 2) {
        return;
      }

      text = text == '0' ? key : text + key;
    }

    // Display the result in the connected TextField.
    amountController.text = text;
  }
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
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? const Color(0xFF006D33) : Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
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
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(12),
                      child: Image.asset(image),
                    ),
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
              style: IconButton.styleFrom(
                backgroundColor: isSelected
                    ? const Color(0xFF006D33)
                    : const Color(0xFFE8E8E8),
                foregroundColor: isSelected
                    ? Color(0xFF1A1C1C) //Colors.white
                    : const Color(0xFF1A1C1C),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(8),
                ),
              ),
              label: Text(
                isSelected ? 'Selected' : 'Select',
                style: GoogleFonts.hankenGrotesk(
                  fontSize: 11,
                  color: Color(0xFF1A1C1C),
                ),
              ),
              icon: isSelected ? Icon(Icons.check) : Icon(Icons.chevron_right),
              iconAlignment: IconAlignment.end,
            ),
          ],
        ),
      ),
    );
  }

  Widget transferoption({
    required String name,
    required String surname,
    required IconData icon,
    bool isactive = true,
    Color? color,
    required isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 334,
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? const Color(0xFF006D33) : Colors.transparent,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: IconButton(
                onPressed: () {},
                style: IconButton.styleFrom(
                  backgroundColor: color,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),

                icon: Icon(icon),
              ),
              title: FittedBox(
                child: Text(
                  name,
                  style: GoogleFonts.hankenGrotesk(
                    fontSize: 12,
                    color: Color(0xFF1A1C1C),
                  ),
                ),
              ),
              subtitle: FittedBox(
                child: Text(
                  surname,
                  style: GoogleFonts.jetBrainsMono(
                    fontSize: 10,
                    color: Color(0xFF1A1C1C),
                  ),
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }

  Widget cashpaymember({
    required String name,
    required String surname,
    required String image,
    bool isactive = true,
    bool hasStar = false,
    required isSelected,
    required VoidCallback onTap,
  }) {
    return Container(
      width: 70,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              GestureDetector(
                onTap: onTap,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: isSelected
                          ? const Color(0xFF006D33)
                          : Colors.transparent,
                    ),
                    color: isSelected
                        ? const Color(0xFF006D33)
                        : Colors.transparent,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(image, width: 56),
                  ),
                ),
              ),
              Positioned(
                left: 42,
                bottom: -2,
                child: Icon(
                  Icons.circle,
                  color: isactive ? Colors.greenAccent : Colors.grey,
                  size: 15,
                ),
              ),
              if (hasStar)
                Positioned(
                  left: -1,
                  top: -2,
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.amberAccent,
                    ),
                    child: const Icon(
                      Icons.star,
                      color: Colors.black,
                      size: 15,
                    ),
                  ),
                ),
              if (isSelected)
                Positioned(
                  right: 0,
                  top: 0,
                  child: IgnorePointer(
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: const BoxDecoration(
                        color: Color(0xFF006D33),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 14,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          ListTile(
            title: FittedBox(
              child: Text(
                name,
                style: GoogleFonts.hankenGrotesk(
                  fontSize: 12,
                  color: Color(0xFF1A1C1C),
                ),
              ),
            ),
            subtitle: FittedBox(
              child: Text(
                surname,
                style: GoogleFonts.jetBrainsMono(
                  fontSize: 10,
                  color: Color(0xFF1A1C1C),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  final List<String> tabbartext = [
    'All',
    'Recent',
    'Favorites',
    'Contacts',
    'Institutions',
  ];

  int selected = 0;
  int? selectedamount;

  final TextEditingController amountController = TextEditingController();

  Widget tabButton({required String text, required int index}) {
    final bool isSelected = selected == index;

    return TextButton(
      onPressed: () {
        setState(() {
          selected = index;
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

  final List<String> amount = [r'+$10', r'+$25', r'+50', r'+$100', 'clear'];

  //int selected = 0;

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
                .replaceAll(r'$', '')
                .trim();
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
        title: Container(
          width: 390,
          height: 80,
          padding: EdgeInsets.only(bottom: 16, top: 16, right: 20, left: 13),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back, color: Color(0xFF3C4A3D)),
                  ),
                  Text(
                    'Transfer',
                    style: GoogleFonts.hankenGrotesk(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF006D33),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        showKeypad = !showKeypad;
                      });
                    },
                    icon: Icon(Icons.dialpad, color: Color(0xFF3C4A3D)),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.receipt_long, color: Color(0xFF3C4A3D)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (showKeypad) amountKeypad(),

            Padding(
              padding: const EdgeInsets.fromLTRB(12, 8, 12, 12),
              child: Row(
                children: [
                  SizedBox(
                    width: 48,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          showKeypad = !showKeypad;
                        });
                      },
                      icon: const Icon(
                        Icons.dialpad,
                        color: Color(0xFF3C4A3D),
                      ),
                    ),
                  ),

                  const SizedBox(width: 4),

                  Expanded(
                    child: sendTransferButton(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
     /* persistentFooterButtons: [
        Container(
          padding: EdgeInsets.only(top: 20, bottom: 32, left: 20, right: 20),
          child: Container(
            width: 350,
            height: 60,
            decoration: BoxDecoration(
              color: Color(0xFFFAE500),
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.arrow_forward, color: Colors.black),
              iconAlignment: IconAlignment.end,
              label: Text(
                'Review Transfer',
                style: GoogleFonts.hankenGrotesk(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1F1C00),
                ),
              ),
            ),
          ),
        ),
      ],*/
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(vertical: 24, horizontal: 20),
          child: Column(
            children: [
              Container(
                width: 350,
                height: 50,
                padding: EdgeInsetsGeometry.symmetric(
                  vertical: 4,
                  horizontal: 4,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusGeometry.circular(8),
                  color: Color(0xFFEEEEEE),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hint: FittedBox(
                            child: Text(
                              'Name, @cashtag, phone, or email',
                              style: GoogleFonts.hankenGrotesk(
                                fontSize: 16,
                                color: Color(0xFF3C4A3D),
                              ),
                            ),
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    FittedBox(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.qr_code_2, color: Color(0xFF006D33)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(tabbartext.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: tabButton(text: tabbartext[index], index: index),
                    );
                  }),
                ),
              ),
              SizedBox(height: 24),
              Container(
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  //border: Border.all(width: 1),
                  color: Color(0xFFFFFFFF),
                ),
                padding: EdgeInsetsGeometry.symmetric(
                  vertical: 16,
                  horizontal: 16,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'SEND AMOUNT',
                          style: GoogleFonts.jetBrainsMono(
                            fontSize: 11,
                            color: Color(0xFF3C4A3D),
                          ),
                        ),
                        SizedBox(
                          width: 160,
                          height: 21,
                          child: TextButton.icon(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: const Color(0xFF7EDDBF),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 6,
                              ),
                              minimumSize: Size.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            icon: const Icon(
                              Icons.account_balance_wallet,
                              size: 14,
                              color: Color(0xFF006D33),
                            ),
                            label: Text(
                              r'Balance: $4,250.00',
                              maxLines: 1,
                              style: GoogleFonts.jetBrainsMono(
                                fontSize: 11,
                                color: const Color(0xFF3C4A3D),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Container(
                      width: 316,
                      //height: 56,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Icon(Icons.attach_money, color: Colors.green),
                              SizedBox(width: 4),
                              Expanded(
                                child: SizedBox(
                                  width: 192,
                                  height: 40,
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    readOnly: true,
                                    controller: amountController,
                                    keyboardType:
                                        const TextInputType.numberWithOptions(
                                          decimal: true,
                                        ),
                                    decoration: const InputDecoration(
                                      hintText: '0.00',
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(width: 4),
                              Text(
                                'USD',
                                style: GoogleFonts.jetBrainsMono(
                                  fontSize: 12,
                                  color: Color(0xFF3C4A3D),
                                ),
                              ),
                            ],
                          ),
                          TextButton.icon(
                            onPressed: () {
                              setState(() {
                                showKeypad = true;
                              });
                            },
                            label: Text(
                              'Tap to focus keypad',
                              style: GoogleFonts.jetBrainsMono(
                                fontSize: 11,
                                color: Color(0xFF3C4A3D),
                              ),
                            ),
                            icon: Icon(
                              Icons.touch_app_outlined,
                              color: Color(0xFF3C4A3D),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12),
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
              SizedBox(height: 24),
              Container(
                width: 350,
                // color: Color(0xFFE8E8E8),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Top Favorites',
                          style: GoogleFonts.hankenGrotesk(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1A1C1C),
                          ),
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          label: Text(
                            'instant',
                            style: GoogleFonts.jetBrainsMono(
                              fontSize: 11,
                              color: Color(0xFF3C4A3D),
                            ),
                          ),
                          icon: Icon(Icons.bolt, color: Color(0xFF006D33)),
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          cashpaymember(
                            name: 'Sarah',
                            surname: '@sarahj',
                            image: 'images/cashpaym1.png',
                            isactive: true, // Green circle
                            hasStar: true,
                            isSelected: selectedcashpayMember == 5,
                            onTap: () {
                              setState(() => selectedcashpayMember = 5);
                              selectedcashpayMember = null;
                              selectedRecipientName = 'Sarah';
                            },
                          ),
                          cashpaymember(
                            name: 'Sarah',
                            surname: '@sarahj',
                            image: 'images/cashpaym1.png',
                            isactive: true,
                            hasStar: true,
                            isSelected: selectedcashpayMember == 0,
                            onTap: () {
                              setState(() => selectedcashpayMember = 0);
                              selectedcashpayMember = null;
                              selectedRecipientName = 'Sarah';
                            },
                          ),
                          cashpaymember(
                            name: 'Sarah',
                            surname: '@sarahj',
                            image: 'images/cashpaym1.png',
                            isactive: true,
                            hasStar: false,
                            isSelected: selectedcashpayMember == 1,
                            onTap: () {
                              setState(() => selectedcashpayMember = 1);
                              selectedcashpayMember = null;
                              selectedRecipientName = 'Sarah';
                            },
                          ),
                          cashpaymember(
                            name: 'Sarah',
                            surname: '@sarahj',
                            image: 'images/cashpaym1.png',
                            isactive: false,
                            hasStar: true,
                            isSelected: selectedcashpayMember == 2,
                            onTap: () {
                              setState(() => selectedcashpayMember = 2);
                              selectedcashpayMember = null;
                              selectedRecipientName = 'Sarah';
                            },
                          ),
                          cashpaymember(
                            name: 'Sarah',
                            surname: '@sarahj',
                            image: 'images/cashpaym1.png',
                            isactive: true,
                            hasStar: true,
                            isSelected: selectedcashpayMember == 4,
                            onTap: () {
                              setState(() => selectedcashpayMember = 4);
                              selectedcashpayMember = null;
                              selectedRecipientName = 'Sarah';
                            },
                          ),
                          cashpaymember(
                            name: 'Sarah',
                            surname: '@sarahj',
                            image: 'images/cashpaym1.png',
                            isactive: false,
                            hasStar: false,
                            isSelected: selectedcashpayMember == 3,
                            onTap: () {
                              setState(() => selectedcashpayMember = 3);
                              selectedcashpayMember = null;
                              selectedRecipientName = 'Sarah';
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24),

                    Container(
                      width: 350,
                      padding: EdgeInsetsGeometry.symmetric(
                        vertical: 8,
                        horizontal: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          transferoption(
                            name: 'Add New Contact or @cashtag',
                            surname: 'Send directly to an unregistered tag',
                            icon: Icons.person_add_alt,
                            color: Color(0xFFC6EADC),
                            isSelected: selectedTransfer == 0,
                            onTap: () {
                              setState(() {
                                selectedTransfer = 0;
                              });
                            },
                          ),
                          transferoption(
                            name: 'Scan QR Code or Payment Link',
                            surname: 'Camera scan, NFC touch, or image import',
                            icon: Icons.qr_code,
                            color: Color(0xFFFAE500),
                            isSelected: selectedTransfer == 1,
                            onTap: () {
                              setState(() {
                                selectedTransfer = 1;
                              });
                            },
                          ),
                          transferoption(
                            name: 'Direct Mobile Phone or Email',
                            surname:
                                'Recipient receives instant claim link via SMS',
                            icon: Icons.contactless_outlined,
                            color: Color(0xFFE2E2E2),
                            isSelected: selectedTransfer == 2,
                            onTap: () {
                              setState(() {
                                selectedTransfer = 2;

                              });
                            },
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
                                'Suggested & Recent',
                                style: GoogleFonts.hankenGrotesk(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF1A1C1C),
                                ),
                              ),
                              Text(
                                '5 Contacts Found',
                                style: GoogleFonts.hankenGrotesk(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF1A1C1C),
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
                            onTap: () {
                              setState(() => selectedMember = 0);
                              selectedcashpayMember = null;
                              selectedRecipientName = 'Sarah';
                            },
                          ),
                          recent(
                            title: 'Sarah Jenkins',
                            subtitle: '@mchen',
                            text: 'Instant ACH Linked • Priority Payee',
                            image: 'images/cashpaym1.png',
                            icon: Icons.verified,
                            subtitle1: 'chloe.b@design.io',
                            isSelected: selectedMember == 2,
                            onTap: () {
                              setState(() => selectedMember = 2);
                              selectedcashpayMember = null;
                              selectedRecipientName = 'Sarah';
                            },
                          ),
                          recent(
                            title: 'Sarah Jenkins',
                            subtitle: '@mchen',
                            text: 'Instant ACH Linked • Priority Payee',
                            image: 'images/cashpaym1.png',
                            icon: Icons.verified,
                            subtitle1: 'chloe.b@design.io',
                            isSelected: selectedMember == 1,
                            onTap: () {
                              setState(() => selectedMember = 1);
                              selectedcashpayMember = null;
                              selectedRecipientName = 'Sarah';
                            },
                          ),
                          recent(
                            title: 'Sarah Jenkins',
                            subtitle: '@mchen',
                            text: 'Instant ACH Linked • Priority Payee',
                            image: 'images/cashpaym1.png',
                            icon: Icons.verified,
                            subtitle1: 'chloe.b@design.io',
                            isSelected: selectedMember == 3,
                            onTap: () {
                              setState(() => selectedMember = 3);
                              selectedcashpayMember = null;
                              selectedRecipientName = 'Sarah';
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Container(
                width: 350,
                padding: EdgeInsetsGeometry.symmetric(
                  vertical: 12,
                  horizontal: 12,
                ),
                decoration: BoxDecoration(color: Color(0xFFF3F3F4)),
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.shield),
                  label: Text(
                    textAlign: TextAlign.center,
                    '256-Bit Bank-Grade Encryption • Zero FeeInstant P2P',
                    style: GoogleFonts.jetBrainsMono(
                      fontSize: 12,
                      color: Color(0xFF3C4A3D),
                    ),
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
