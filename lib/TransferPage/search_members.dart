import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchMembers extends StatelessWidget {
  const SearchMembers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.close_outlined)),
        title: Text(
          'Select Contact',
          style: GoogleFonts.hankenGrotesk(
            color: Color(0xFF1A1C1C),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 390,
                padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.cancel_outlined),
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                width: 390,
                padding: EdgeInsets.only(left: 20, right: 20, top: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'RESULTS',
                      style: GoogleFonts.jetBrainsMono(
                        fontSize: 14,
                        color: Color(0xFF3C4A3D),
                      ),
                    ),
                    SizedBox(height: 12),
                    Container(
                      width: 374,
                      padding: EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 12,
                      ),
                      child: Row(
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  'images/border.png',
                                  width: 48,
                                  height: 48,
                                  fit: BoxFit.cover,
                                ),
                              ),

                              Positioned(
                                bottom: -3,
                                right: -3,
                                child: Container(
                                  width: 18,
                                  height: 18,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF006D33),
                                  ),
                                  child: const Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 4,),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      backgroundColor: const Color(0xFF29E376),
                                      padding: const EdgeInsets.symmetric(horizontal: 4),
                                      minimumSize: Size.zero,
                                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                      shape: const RoundedRectangleBorder(),
                                    ),
                                    child: Text(
                                      'Sarah',
                                      style: GoogleFonts.hankenGrotesk(
                                        color: const Color(0xFF006D33),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    ' Jenkins',
                                    style: GoogleFonts.hankenGrotesk(
                                      color: const Color(0xFF1A1C1C),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: 4),

                              TextButton.icon(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  minimumSize: Size.zero,
                                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                ),
                                icon: const Icon(
                                  Icons.circle,
                                  color: Color(0xFF006D33),
                                  size: 10,
                                ),
                                label: Text(
                                  'CashPay Member',
                                  style: GoogleFonts.hankenGrotesk(
                                    color: const Color(0xFF3C4A3D),
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 374,
                      padding: EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 12,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xFFCDBC00)
                            ),
                              child:  Center(
                                child: Text(
                                  'SM',
                                  style: GoogleFonts.hankenGrotesk(
                                    color: const Color(0xFF524B00),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                          ),
                          SizedBox(width: 4,),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      backgroundColor: const Color(0xFF29E376),
                                      padding: const EdgeInsets.symmetric(horizontal: 4),
                                      minimumSize: Size.zero,
                                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                      shape: const RoundedRectangleBorder(),
                                    ),
                                    child: Text(
                                      'Sarah',
                                      style: GoogleFonts.hankenGrotesk(
                                        color: const Color(0xFF006D33),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    ' Jenkins',
                                    style: GoogleFonts.hankenGrotesk(
                                      color: const Color(0xFF1A1C1C),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: 4),

                              Text(
                                'Recent Beneficiary • Bank Transfer',
                                style: GoogleFonts.hankenGrotesk(
                                  color: const Color(0xFF3C4A3D),
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 374,
                      padding: EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 12,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color(0xFFE8E8E8)
                            ),
                            child:  Center(
                              child: Icon(Icons.alternate_email)
                            ),
                          ),

                          SizedBox(width: 4,),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.alternate_email),
                                  TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      backgroundColor: const Color(0xFF29E376),
                                      padding: const EdgeInsets.symmetric(horizontal: 4),
                                      minimumSize: Size.zero,
                                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                      shape: const RoundedRectangleBorder(),
                                    ),

                                    child: Text(
                                      'Sarah',
                                      style: GoogleFonts.hankenGrotesk(
                                        color: const Color(0xFF006D33),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    ' Jenkins',
                                    style: GoogleFonts.hankenGrotesk(
                                      color: const Color(0xFF1A1C1C),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: 4),

                              Text(
                                'Suggested\nUsername',
                                style: GoogleFonts.hankenGrotesk(
                                  color: const Color(0xFF3C4A3D),
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
