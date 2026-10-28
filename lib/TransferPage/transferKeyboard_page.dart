import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransferkeyboardPage extends StatefulWidget {
  const TransferkeyboardPage({super.key});

  @override
  State<TransferkeyboardPage> createState() => _TransferkeyboardPageState();
}

class _TransferkeyboardPageState extends State<TransferkeyboardPage> {
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
                    height: 400,

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
                                        color: Colors.black.withValues(alpha: 0.03),
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
                                          width: 130,
                                          height: 40,
                                          child: TextField(
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 32,
                                              fontWeight: FontWeight.bold,
                                            ),

                                            readOnly: true,
                                            // controller: amountController,
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
                                        mainAxisAlignment: MainAxisAlignment.center,
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
                                                  borderRadius: BorderRadius.circular(15),
                                                ),
                                                child: Icon(
                                                  Icons.check,
                                                  color: Colors.white,
                                                  size: 12,
                                                ),
                                              ), 
                                              style: TextButton.styleFrom(
                                                backgroundColor: Color(
                                                    0xFFC6EADC),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadiusGeometry.circular(12),

                                                )
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
