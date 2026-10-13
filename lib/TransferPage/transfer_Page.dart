import 'package:flutter/material.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({super.key});

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: 390,
          padding: EdgeInsets.only(left: 13, top: 16, right: 20, bottom: 16),
          decoration: BoxDecoration(
            // color: Color(0xFFBBCBB9),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                    Text(
                      'Transfer',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF006D33),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 13),
              IconButton(onPressed: () {}, icon: Icon(Icons.receipt_long)),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 24),
        child: Center(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Container(
                width: double.infinity,
                //height: 175,
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: 24,
                  vertical: 24,
                ),
                //color: Color(0xFF3C4A3D),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color(0xFF3C4A3D), width: 1),
                ),
                child: Center(
                  child: Column(
                    children: [
                      const Text(
                        'SEND AMOUNT',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF3C4A3D),
                        ),
                      ),
                      const Text(
                        r'$ 250.00',
                        style: TextStyle(
                          fontSize: 48,
                          color: Color(0xFF1A1C1C),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Divider(thickness: 2, height: 10),
                      SizedBox(height: 5),
                      Container(
                        width: 140,
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 4,
                        ),
                        height: 24,
                        decoration: BoxDecoration(
                          color: Color(0xFF16E678),
                          borderRadius: BorderRadius.circular(12),
                        ),

                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.account_balance_wallet_outlined,
                                size: 16,
                              ),
                              SizedBox(width: 4),
                              Text('Balance: \$4,444.00'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 48),

              Container(
                width: 355,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                 // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Transfer Method',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1A1C1C),
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 171,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Color(0xFF006D33),
                              width: 1,
                            ),
                            color: Color(0xFFE3E8E3),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 40,
                                height: 45,
                                decoration: BoxDecoration(
                                  color: Color(0xFF006D33),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Icon(Icons.account_circle_outlined),
                              ),
                              SizedBox(height: 2),
                              Text(
                                'Cashpay Member',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF006D33),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 171,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Color(0xFF1A1C1C),
                              width: 1,
                            ),
                            //    color: Color(0xFFE3E8E3)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.account_balance, size: 35),
                              SizedBox(height: 5),

                              Text(
                                'Bank Account',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF006D33),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Container(
                      width: 355,
                      height: 74,
                      padding: EdgeInsets.symmetric(horizontal: 16,),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF1A1C1C),
                            width: 1,
                          ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.phone_android_rounded),
                          SizedBox(width: 2),
                          Expanded(
                            child: ListTile(
                              title: Text(
                                'Mobile Wallet',
                                style: TextStyle(fontSize: 12),
                              ),
                              subtitle: Text(
                                'Send via phone number',
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ),
                          //SizedBox(width: ),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                    SizedBox(height: 48,),
                    Container(
                      width: 355,
                      //height: 229,
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'To who?',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1A1C1C),
                            ),
                          ),
                          SizedBox(height: 24,),
                          SearchBar()
                        ],
                      ),
                    )
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
