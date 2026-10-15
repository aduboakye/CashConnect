import 'package:flutter/material.dart';

class LoanAndCredit extends StatefulWidget {
  const LoanAndCredit({super.key});

  @override
  State<LoanAndCredit> createState() => _LoanAndCreditState();
}

class _LoanAndCreditState extends State<LoanAndCredit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: 392,
          height: 92,
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 215.8,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.payments_rounded, color: Color(0xFF006D33)),
                    FittedBox(
                      child: Text(
                        'CashPay',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF006D33),
                          fontSize: 48,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Icon(Icons.notifications, color: Color(0xFF006D33)),
              ),
              GestureDetector(
                onTap: () {},
                child: Image.asset("images/Button.png"),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.only(left: 20, right: 20, top: 24),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Container(
                width: 350,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Your Credit Health',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF1A1C1C),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 12),
                    Container(
                      width: 350,
                      //height: 189,
                      padding: EdgeInsets.symmetric(
                        vertical: 24,
                        horizontal: 24,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),

                        gradient: RadialGradient(
                          center: Alignment.topRight,
                          radius: 1.2,
                          // stops: ,
                          colors: [Color(0xFF14532D), Color(0xFF1A1C1C)],
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'FICO SCORE 8',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF646464),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,

                            children: [
                              const Text(
                                '750',
                                style: TextStyle(
                                  fontSize: 48,
                                  color: Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 12),
                              const Text(
                                'Excellent',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF63FF94),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 12),
                          Divider(height: 1, thickness: 2),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              TextButton.icon(onPressed: (){}, label: Text('+15 pts this month',style: TextStyle(fontSize: 16, color: Color(0xFFE2E2E2),),),
                                icon: Icon( Icons.trending_up,color: Color(0xFF63FF94),),
                              ),
                             // const Text('Details',style: TextStyle(fontSize: 16, color: Color(0xFFFFFFFF),)),
                              SizedBox(width: 8,),
                              TextButton.icon(
                                onPressed: () {},
                                iconAlignment: IconAlignment.end,
                                label: Text('Details',style: TextStyle(fontSize: 12, color: Color(0xFFFFFFFF),)),
                                icon: Icon(Icons.arrow_forward_ios,color: Color(0xFFFFFFFF),size: 10,),
                              )
                            ],
                          )
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
