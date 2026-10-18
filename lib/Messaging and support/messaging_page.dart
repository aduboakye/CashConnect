import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MessagingPage extends StatefulWidget {
  const MessagingPage({super.key});

  @override
  State<MessagingPage> createState() => _MessagingPageState();
}

class _MessagingPageState extends State<MessagingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /*leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
        title: Flexible(
          child: ListTile(
            leading: Image.asset('images/border.png'),
            title: Text('Elena Rodriguez',style: GoogleFonts.hankenGrotesk(fontSize: 20),maxLines: 1,),
            subtitle: Text('Active now',style: GoogleFonts.hankenGrotesk(fontSize: 12),),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.call)),
          IconButton(onPressed: (){}, icon: Icon(Icons.video_call)),
        ],*/
        title: Container(
          width: 390,
          //height: 77,
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
              Flexible(
                child: ListTile(
                  dense: true,
                  visualDensity: const VisualDensity(vertical: -4),
                  minVerticalPadding: 0,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset('images/border.png'),
                  ),
                  title: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'Elena Rodriguez',
                      style: GoogleFonts.hankenGrotesk(fontSize: 20),
                    ),
                  ),
                  subtitle: Text(
                    'Active now',
                    style: GoogleFonts.hankenGrotesk(fontSize: 12),
                  ),
                ),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.call)),
              IconButton(onPressed: () {}, icon: Icon(Icons.videocam_outlined)),
            ],
          ),
        ),

      ),
      persistentFooterButtons: [
        Container(
          width: 390,
          height: 86,
          padding: EdgeInsetsGeometry.symmetric(vertical: 20,horizontal: 20),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_outline_outlined)),
                 Flexible(
                   child: TextField(

                    decoration: InputDecoration(
                      fillColor: Color(0xFFF3F3F4),
                      suffixIcon: Icon(Icons.emoji_emotions_outlined),
                        hint: Text('Type a message...'),
                        contentPadding: EdgeInsetsGeometry.symmetric(vertical: 16,horizontal: 20),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        )
                    ),
                                   ),
                 ),
              IconButton(onPressed: (){},
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.amberAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(12)
                    )

                  ),
                  icon: Icon(Icons.send)),


            ],
          )
        )
      ],
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(vertical: 20, horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsetsGeometry.symmetric(
                      horizontal: 12,
                      vertical: 4,
                    ),
                    backgroundColor: Color(0xFFF3F3F4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Today, 10:42 AM',
                    style: GoogleFonts.hankenGrotesk(
                      fontSize: 12,
                      color: Color(0xFF3C4A3D),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 48),
              Container(
                width: 315,
                height: 182,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 290.44,
                      height: 154,
                      padding: EdgeInsetsGeometry.symmetric(
                        vertical: 12,
                        horizontal: 16,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFF5E5E5E),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text.rich(
                            TextSpan(
                              style: GoogleFonts.hankenGrotesk(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                              children: const [
                                TextSpan(text: 'Your transfer of '),
                                TextSpan(
                                  text: '+\$1,250.00',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(text: ' to '),
                                TextSpan(
                                  text: 'Elena Rodriguez',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: ' has been successfully processed.',
                                ),
                              ],
                            ),
                            textAlign: TextAlign.start,
                          ),
                          TextButton.icon(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: Color(0xFF322D2D),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            label: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'COMPLETED',
                                  style: GoogleFonts.hankenGrotesk(
                                    fontSize: 12,
                                    color: Color(0xFFF0F1F1),
                                  ),
                                ),
                                Text(
                                  'TXN-8942A',
                                  style: GoogleFonts.hankenGrotesk(
                                    fontSize: 12,
                                    color: Color(0xFFF0F1F1),
                                  ),
                                ),
                              ],
                            ),
                            icon: CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.green,

                              child: Icon(Icons.check),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '10:42 AM',
                      style: GoogleFonts.jetBrainsMono(
                        fontSize: 14,
                        color: Color(0xFF3C4A3D),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 48),
              Container(
                width: 297.5,
                //height: 98,
                padding: EdgeInsetsGeometry.symmetric(
                  vertical: 12,
                  horizontal: 12,
                ),
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: ListTile(
                          leading: IconButton(
                            onPressed: () {},
                            style: IconButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              backgroundColor: Color(0xFFFFDAD6),
                            ),
                            icon: Icon(Icons.picture_as_pdf),
                          ),
                          title: Text(
                            'Receipt_TXN-8942A.pdf',
                            style: GoogleFonts.hankenGrotesk(
                              fontSize: 16,
                              color: Color(0xFF1A1C1C),
                            ),
                          ),
                          subtitle: Text(
                            '124 KB • Official Document',
                            style: GoogleFonts.hankenGrotesk(
                              fontSize: 12,
                              color: Color(0xFF1A1C1C),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        style: IconButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          backgroundColor: Color(0xFFBBCBB9),
                        ),
                        icon: Icon(Icons.download, color: Color(0xFF006D33)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 48),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 297.5,
                      //height: 98,
                      padding: EdgeInsetsGeometry.symmetric(
                        vertical: 12,
                        horizontal: 12,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8),bottomRight: Radius.circular(8),topLeft: Radius.circular(8),)
                      ),
                      child: Text(
                        'Thanks! Just got the notification. I llsend the contract over by EOD.',
                        style: GoogleFonts.hankenGrotesk(
                          fontSize: 12,
                          color: Color(0xFF1A1C1C),
                        ),
                      ),
                    ),

                  ),
                  TextButton.icon(onPressed: (){},label: Text(
                    '10:45 AM.',
                    style: GoogleFonts.jetBrainsMono(
                      fontSize: 12,
                      color: Color(0xFF1A1C1C),
                    ),
                  ),
                    icon: Icon(Icons.done_all),
                    iconAlignment: IconAlignment.end,
                      )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
