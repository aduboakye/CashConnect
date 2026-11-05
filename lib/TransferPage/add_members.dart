import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddMembers extends StatelessWidget {
  const AddMembers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, color: Color(0xFF006D33)),
        ),
        title: Text(
          'New Contact',
          style: GoogleFonts.hankenGrotesk(
            color: Color(0xFF1A1C1C),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actionsPadding: EdgeInsets.symmetric(horizontal: 20),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Save',
              style: GoogleFonts.hankenGrotesk(
                color: Color(0xFF006D33),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 48, right: 20, left: 20),
            child: Column(
              children: [
                Container(
                  width: 350,
                  padding: EdgeInsets.only(bottom: 48),
                  child: Container(
                    width: 350,
                    child: Center(
                      child: Container(
                        width: 128,
                        height: 128,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xFFE8E8E8),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.person_outline,
                                size: 50,
                                color: Color(0xFF3C4A3D),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xFF00D66B),
                                ),
                                child: Icon(Icons.add_a_photo_outlined),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 350,
                  padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Full Name',
                        style: GoogleFonts.hankenGrotesk(
                          color: Color(0xFF3C4A3D),
                          fontSize: 12,
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person_outline,

                            color: Color(0xFF3C4A3D),
                          ),
                          hint: Text(
                            'e.g. Jane Doe',
                            style: GoogleFonts.hankenGrotesk(
                              color: Color(0xFF3C4A3D),
                              fontSize: 16,
                            ),
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 24),
                      Text(
                        'Email Address',
                        style: GoogleFonts.hankenGrotesk(
                          color: Color(0xFF3C4A3D),
                          fontSize: 12,
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email_outlined,

                            color: Color(0xFF3C4A3D),
                          ),
                          hint: Text(
                            '+jane.doe@example.com',
                            style: GoogleFonts.hankenGrotesk(
                              color: Color(0xFF3C4A3D),
                              fontSize: 16,
                            ),
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 24),
                      Text(
                        'Phone Number',
                        style: GoogleFonts.hankenGrotesk(
                          color: Color(0xFF3C4A3D),
                          fontSize: 12,
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.phone_outlined,

                            color: Color(0xFF3C4A3D),
                          ),
                          hint: Text(
                            '1 (555) 000-0000',
                            style: GoogleFonts.hankenGrotesk(
                              color: Color(0xFF3C4A3D),
                              fontSize: 16,
                            ),
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 350,
                  padding: EdgeInsets.only(right: 4, left: 4, top: 48),
                  child: Text(
                    'Saved contacts will appear in your transfer list for quicker payments.',
                    textAlign: TextAlign.center,

                    style: GoogleFonts.hankenGrotesk(color: Color(0xFF3C4A3D)),
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
